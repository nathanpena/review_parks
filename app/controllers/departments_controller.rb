class DepartmentsController < ApplicationController
  def index
    @playgrounds = Playground.all
  end
end
