class AddAttachmentFileToTranslations < ActiveRecord::Migration
  def self.up
    add_column :translations, :file_file_name, :string
    add_column :translations, :file_content_type, :string
    add_column :translations, :file_file_size, :integer
    add_column :translations, :file_updated_at, :datetime
  end

  def self.down
    remove_column :translations, :file_file_name
    remove_column :translations, :file_content_type
    remove_column :translations, :file_file_size
    remove_column :translations, :file_updated_at
  end
end
