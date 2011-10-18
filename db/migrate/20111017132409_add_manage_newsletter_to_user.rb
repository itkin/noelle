class AddManageNewsletterToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :manage_newsletter, :boolean, :default => false
  end

  def self.down
  end
end
