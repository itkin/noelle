# -*- encoding : utf-8 -*-
class AddTimerToCategories < ActiveRecord::Migration
  def self.up
    add_column :categories, :timer, :integer, :default => 0
  end

  def self.down
  end
end
