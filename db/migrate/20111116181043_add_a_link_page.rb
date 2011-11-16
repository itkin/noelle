class AddALinkPage < ActiveRecord::Migration
  def self.up
    Page.create!(:name => 'liens')
  end

  def self.down
  end
end
