class FixColumnName < ActiveRecord::Migration
  def self.up
    rename_column :playgrounds, :association_id, :department_id
  end
end
