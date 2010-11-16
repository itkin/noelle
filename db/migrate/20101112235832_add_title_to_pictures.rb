class AddTitleToPictures < ActiveRecord::Migration
  def self.up
    add_column :pictures, :title, :string
  end

  def self.down
  end
end
