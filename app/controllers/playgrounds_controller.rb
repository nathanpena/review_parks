class PlaygroundsController < ApplicationController

before_action :find_playground, only: [:show, :edit, :update, :destroy]

  def index
    @playgrounds = Playground.all.order("name")
  end

  def new
    @playground = Playground.new
  end

  def create
    @playground = Playground.new(playground_params)

    if @playground.save(playground_params)
      expire_fragment('all_playgrounds')
      redirect_to playground_path(@playground)
    else
      render 'new'
    end
  end

  def show
  end

  def update
    if @playground.update(playground_params)
      expire_fragment('all_playgrounds')
      redirect_to playground_path(@playground)
    else
      render 'form'
    end
  end

  def edit
  end

  def destroy
    @playground.destroy
    redirect_to root_path
  end

private

  def playground_params
    params.require(:playground).permit(:name, :description)
  end

  def find_playground
    @playground = Playground.find(params[:id])
  end

end
