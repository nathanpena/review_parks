class DropTable < ActiveRecord::Migration
  def self.up
    drop_table :associations
  end
end
