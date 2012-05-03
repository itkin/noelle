# -*- encoding : utf-8 -*-
class AddDescriptionToCategories < ActiveRecord::Migration
  def self.up
    add_column :categories, :description, :blob
  end

  def self.down
  end
end
