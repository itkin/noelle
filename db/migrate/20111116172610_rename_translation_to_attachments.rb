# -*- encoding : utf-8 -*-
class RenameTranslationToAttachments < ActiveRecord::Migration
  def self.up
    rename_table :translations, :attachments
    add_column :attachments, :type, :string
    execute "update attachments set type='Translation'"
  end

  def self.down
  end
end
