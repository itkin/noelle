# -*- encoding : utf-8 -*-
class AddSubLabelToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :sub_label, :string
  end

  def self.down
  end
end
