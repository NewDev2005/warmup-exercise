# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_05_23_195909) do
  create_table "employees", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "manager_id"
    t.string "name"
    t.datetime "updated_at", null: false
    t.index ["manager_id"], name: "index_employees_on_manager_id"
  end

  create_table "followings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "following_id"
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["following_id"], name: "index_followings_on_following_id"
    t.index ["user_id"], name: "index_followings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "employees", "employees", column: "manager_id"
  add_foreign_key "followings", "followings"
  add_foreign_key "followings", "users"
end
