# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100301094706) do

  create_table "attachments", :force => true do |t|
    t.integer  "parent_id"
    t.string   "content_type"
    t.string   "filename"
    t.string   "thumbnail"
    t.integer  "size"
    t.integer  "width"
    t.integer  "height"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "plain_text_id"
  end

  add_index "attachments", ["plain_text_id"], :name => "attachments_plain_text_id_fk"

  create_table "blocks", :force => true do |t|
    t.integer  "page_id"
    t.integer  "position_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "blocks", ["page_id"], :name => "blocks_page_id_fk"
  add_index "blocks", ["position_id"], :name => "blocks_position_id_fk"

  create_table "comments", :force => true do |t|
    t.string   "subject"
    t.text     "content"
    t.integer  "status_id"
    t.integer  "user_id"
    t.string   "user_name"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["user_id"], :name => "comments_user_id_fk"

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.string   "header"
    t.text     "content"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "char_showed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "extension_types", :force => true do |t|
    t.string   "name"
    t.string   "controller_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "galleries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gallery_photos", :force => true do |t|
    t.integer  "gallery_id"
    t.integer  "parent_id"
    t.string   "content_type"
    t.string   "filename"
    t.string   "thumbnail"
    t.integer  "size"
    t.integer  "width"
    t.integer  "height"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "gallery_photos", ["gallery_id"], :name => "gallery_photos_gallery_id_fk"

  create_table "items", :force => true do |t|
    t.integer  "block_id"
    t.integer  "user_id"
    t.integer  "status_id"
    t.integer  "order"
    t.integer  "connector"
    t.integer  "extension_type_id"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["block_id"], :name => "items_block_id_fk"
  add_index "items", ["status_id"], :name => "items_status_id_fk"
  add_index "items", ["user_id"], :name => "items_user_id_fk"

  create_table "languages", :force => true do |t|
    t.string   "name"
    t.string   "short_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "layout_templates", :force => true do |t|
    t.string   "name"
    t.string   "header_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.float    "latitude"
    t.float    "logitude"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_types", :force => true do |t|
    t.string   "name"
    t.integer  "type_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", :force => true do |t|
    t.integer  "menu_type_id"
    t.integer  "depth"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menus", ["menu_type_id"], :name => "menus_menu_type_id_fk"

  create_table "news", :force => true do |t|
    t.string   "header"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newsletters", :force => true do |t|
    t.string   "name"
    t.string   "label"
    t.text     "footer"
    t.integer  "language_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.integer  "language_id"
    t.integer  "parent_id"
    t.integer  "status_id"
    t.integer  "connector"
    t.string   "slug"
    t.integer  "layout_template_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "redirect"
    t.integer  "order"
    t.string   "page_type"
    t.text     "description"
    t.integer  "user_id"
    t.boolean  "is_blog"
  end

  add_index "pages", ["language_id"], :name => "pages_language_id_fk"
  add_index "pages", ["layout_template_id"], :name => "pages_layout_template_id_fk"
  add_index "pages", ["status_id"], :name => "pages_status_id_fk"
  add_index "pages", ["user_id"], :name => "pages_user_id_fk"

  create_table "plain_texts", :force => true do |t|
    t.string   "header"
    t.text     "content"
    t.integer  "showed_signs_on_preview"
    t.boolean  "post"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "thumb_attachment_id"
    t.integer  "background_attachment_id"
    t.boolean  "commentable"
  end

  create_table "positions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "page_pagination"
    t.boolean  "main_position"
    t.integer  "layout_template_id"
  end

  add_index "positions", ["layout_template_id"], :name => "positions_layout_template_id_fk"

  create_table "quotas", :force => true do |t|
    t.text     "content"
    t.string   "speaker"
    t.string   "company"
    t.integer  "language_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quotas", ["language_id"], :name => "quotas_language_id_fk"

  create_table "roles", :force => true do |t|
    t.string "name"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  add_index "roles_users", ["role_id"], :name => "index_roles_users_on_role_id"
  add_index "roles_users", ["user_id"], :name => "index_roles_users_on_user_id"

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subevents", :force => true do |t|
    t.integer  "event_id"
    t.datetime "event_date"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "length"
    t.string   "unit"
  end

  add_index "subevents", ["event_id"], :name => "subevents_event_id_fk"

  create_table "subscriptions", :force => true do |t|
    t.string   "address",                         :null => false
    t.boolean  "active",        :default => true, :null => false
    t.string   "secret",                          :null => false
    t.integer  "newsletter_id",                   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type"], :name => "index_taggings_on_taggable_id_and_taggable_type"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "training_module_events", :force => true do |t|
    t.integer  "training_module_id"
    t.text     "place"
    t.datetime "event_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "university"
  end

  add_index "training_module_events", ["training_module_id"], :name => "training_module_events_training_module_id_fk"

  create_table "training_modules", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.integer  "training_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "training_modules", ["training_id"], :name => "training_modules_training_id_fk"

  create_table "trainings", :force => true do |t|
    t.string   "header"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.string   "activation_code",           :limit => 40
    t.datetime "activated_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

  add_foreign_key "attachments", "plain_texts", :name => "attachments_plain_text_id_fk"

  add_foreign_key "blocks", "pages", :name => "blocks_page_id_fk"
  add_foreign_key "blocks", "positions", :name => "blocks_position_id_fk"

  add_foreign_key "comments", "users", :name => "comments_user_id_fk"

  add_foreign_key "gallery_photos", "galleries", :name => "gallery_photos_gallery_id_fk"

  add_foreign_key "items", "blocks", :name => "items_block_id_fk"
  add_foreign_key "items", "statuses", :name => "items_status_id_fk"
  add_foreign_key "items", "users", :name => "items_user_id_fk"

  add_foreign_key "menus", "menu_types", :name => "menus_menu_type_id_fk"

  add_foreign_key "pages", "languages", :name => "pages_language_id_fk"
  add_foreign_key "pages", "layout_templates", :name => "pages_layout_template_id_fk"
  add_foreign_key "pages", "statuses", :name => "pages_status_id_fk"
  add_foreign_key "pages", "users", :name => "pages_user_id_fk"

  add_foreign_key "positions", "layout_templates", :name => "positions_layout_template_id_fk"

  add_foreign_key "quotas", "languages", :name => "quotas_language_id_fk"

  add_foreign_key "roles_users", "roles", :name => "roles_users_role_id_fk"
  add_foreign_key "roles_users", "users", :name => "roles_users_user_id_fk"

  add_foreign_key "subevents", "events", :name => "subevents_event_id_fk"

  add_foreign_key "taggings", "tags", :name => "taggings_tag_id_fk"

  add_foreign_key "training_module_events", "training_modules", :name => "training_module_events_training_module_id_fk"

  add_foreign_key "training_modules", "trainings", :name => "training_modules_training_id_fk"

end
