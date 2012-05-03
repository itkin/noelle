# -*- encoding : utf-8 -*-
class AddAttachmentDocumentPictureToPage < ActiveRecord::Migration
  def self.up
    add_column :pages, :document_file_name, :string
    add_column :pages, :document_content_type, :string
    add_column :pages, :document_file_size, :integer
    add_column :pages, :document_updated_at, :datetime
    add_column :pages, :picture_file_name, :string
    add_column :pages, :picture_content_type, :string
    add_column :pages, :picture_file_size, :integer
    add_column :pages, :picture_updated_at, :datetime
  end

  def self.down
    remove_column :pages, :document_file_name
    remove_column :pages, :document_content_type
    remove_column :pages, :document_file_size
    remove_column :pages, :document_updated_at
    remove_column :pages, :picture_file_name
    remove_column :pages, :picture_content_type
    remove_column :pages, :picture_file_size
    remove_column :pages, :picture_updated_at
  end
end
