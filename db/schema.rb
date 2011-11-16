# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111116181043) do

  create_table "attachments", :force => true do |t|
    t.integer  "position"
    t.string   "language"
    t.boolean  "display"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.string   "type"
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "display",    :default => true
    t.binary   "comment"
    t.integer  "timer",      :default => 0
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.binary   "content"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.string   "document_2_file_name"
    t.string   "document_2_content_type"
    t.integer  "document_2_file_size"
    t.datetime "document_2_updated_at"
  end

  create_table "pictures", :force => true do |t|
    t.text     "description"
    t.integer  "position"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "title"
    t.boolean  "top",                :default => false
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.integer  "category_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sub_title"
    t.boolean  "display",     :default => true
  end

  create_table "subscribers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "",    :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "",    :null => false
    t.string   "password_salt",                       :default => "",    :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "manage_newsletter",                   :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
