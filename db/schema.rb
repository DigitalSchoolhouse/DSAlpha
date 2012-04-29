ActiveRecord::Schema.define(:version => 20120429231535) do

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "country"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "asset_url"
    t.integer  "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "admin"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end