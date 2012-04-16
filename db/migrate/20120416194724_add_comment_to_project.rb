class AddCommentToProject < ActiveRecord::Migration
  def change
    add_column :projects, :comment, :text
    add_column :projects, :timer, :integer, :default => 0
  end
end
