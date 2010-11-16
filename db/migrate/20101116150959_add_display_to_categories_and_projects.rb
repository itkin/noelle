class AddDisplayToCategoriesAndProjects < ActiveRecord::Migration
  def self.up
    add_column :categories, :display, :boolean, :default => true
    add_column :projects, :display, :boolean, :default => true
  end

  def self.down
  end
end
