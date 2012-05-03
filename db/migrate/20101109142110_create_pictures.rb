# -*- encoding : utf-8 -*-
class CreatePictures < ActiveRecord::Migration
  def self.up
    create_table :pictures do |t|
      t.text :description
      t.integer :position
      t.integer :project_id

      t.timestamps
    end
  end

  def self.down
    drop_table :pictures
  end
end
