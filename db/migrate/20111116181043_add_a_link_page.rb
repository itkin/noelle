# -*- encoding : utf-8 -*-
class AddALinkPage < ActiveRecord::Migration
  def self.up
    Page.create!(:name => 'liens')
  end

  def self.down
  end
end
