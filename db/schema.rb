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

ActiveRecord::Schema[7.0].define(version: 2023_08_28_120224) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "devs", force: :cascade do |t|
    t.integer "soft_skill"
    t.integer "language"
    t.string "diploma"
    t.boolean "availability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.text "comment"
    t.boolean "accepted"
    t.bigint "dev_id", null: false
    t.bigint "mission_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dev_id"], name: "index_matches_on_dev_id"
    t.index ["mission_id"], name: "index_matches_on_mission_id"
  end

  create_table "missions", force: :cascade do |t|
    t.string "name"
    t.integer "language"
    t.integer "soft_skill"
    t.string "area"
    t.string "location"
    t.text "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "price"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_missions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "company"
    t.string "phone"
    t.string "area"
    t.string "location"
    t.integer "upvote"
    t.string "fav"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "matches", "devs"
  add_foreign_key "matches", "missions"
  add_foreign_key "missions", "users"
end
