class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :title
      t.text :description
      t.string :director

      t.timestamps null: false
    end
  end
end
