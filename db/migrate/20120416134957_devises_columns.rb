# -*- encoding : utf-8 -*-
class DevisesColumns < ActiveRecord::Migration
  def up
    add_column :users, :reset_password_sent_at, :datetime
  end

  def down
  end
end
