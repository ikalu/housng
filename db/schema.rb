ActiveRecord::Schema.define(version: 20140822202600) do
  enable_extension "plpgsql"
  create_table "halls", force: true do |t|
    t.string   "name",             null: false
    t.integer  "number_of_suites"
    t.integer  "number_of_rooms",  null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end
  add_index "halls", ["name"], name: "index_halls_on_name", unique: true, using: :btree
  create_table "managements", force: true do |t|
    t.integer  "user_id"
    t.integer  "hall_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
  create_table "users", force: true do |t|
    t.string   "email",                              null: false
    t.string   "password_digest",                    null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.boolean  "admin",              default: false
    t.boolean  "resident_manager",   default: false
    t.boolean  "resident_assistant", default: false
  end
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
end
