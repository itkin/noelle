class AddColumnTopToPicture < ActiveRecord::Migration
  def self.up
    add_column :pictures, :top, :boolean, :default => false
  end

  def self.down
  end
end
