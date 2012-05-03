# -*- encoding : utf-8 -*-
class CreateTranslations < ActiveRecord::Migration
  def self.up
    create_table :translations do |t|
      t.integer :position
      t.string :language
      t.boolean :display

      t.timestamps
    end
  end

  def self.down
    drop_table :translations
  end
end
