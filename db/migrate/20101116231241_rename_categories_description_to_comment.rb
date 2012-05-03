# -*- encoding : utf-8 -*-
class RenameCategoriesDescriptionToComment < ActiveRecord::Migration
  def self.up
    rename_column :categories, :description, :comment
  end

  def self.down
  end
end
