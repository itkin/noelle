class RenameLabelIntoTitle < ActiveRecord::Migration
  def self.up
    rename_column :categories, :label, :title
    rename_column :projects, :label, :title
    rename_column :projects, :sub_label, :sub_title
  end

  def self.down
  end
end
