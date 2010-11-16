class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :name
      t.timestamps
    end
    add_column :pages, :content, :blob
  end

  def self.down
    drop_table :pages
  end
end
