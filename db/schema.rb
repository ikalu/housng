
ActiveRecord::Schema.define(version: 20140819162957) do
  enable_extension "plpgsql"
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
