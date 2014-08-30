ActiveRecord::Schema.define(version: 20140829182305) do
  enable_extension "plpgsql"
  create_table "applications", force: true do |t|
    t.string   "academic_year"
    t.string   "semester"
    t.text     "home_address"
    t.string   "home_phone"
    t.string   "student_id"
    t.integer  "age"
    t.string   "gender"
    t.string   "parent_name"
    t.text     "parent_address"
    t.string   "parent_home_telephone"
    t.string   "parent_work_telephone"
    t.boolean  "roommate_preference"
    t.string   "roommate1"
    t.string   "roommate2"
    t.string   "roommate3"
    t.boolean  "any_disability"
    t.text     "disability_description"
    t.boolean  "previous_application"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date_of_birth"
  end
  add_index "applications", ["user_id"], name: "index_applications_on_user_id", using: :btree
  create_table "applications_student_statuses", id: false, force: true do |t|
    t.integer "application_id"
    t.integer "student_status_id"
  end
  create_table "hall_applications", id: false, force: true do |t|
    t.integer  "hall_id"
    t.integer  "application_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
  create_table "hall_assignments", force: true do |t|
    t.integer  "user_id"
    t.integer  "hall_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end
  create_table "halls", force: true do |t|
    t.string   "name",             null: false
    t.integer  "number_of_suites"
    t.integer  "number_of_rooms",  null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end
  add_index "halls", ["name"], name: "index_halls_on_name", unique: true, using: :btree
  create_table "student_statuses", force: true do |t|
    t.string   "status"
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
