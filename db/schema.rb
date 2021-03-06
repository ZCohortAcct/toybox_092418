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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_04_01_211209) do

  create_table "toymakers", force: :cascade do |t|
    t.string "brand"
    t.string "kind"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "toys", force: :cascade do |t|
    t.string "name"
    t.string "size"
    t.string "theme"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "toymaker_id"
    t.index ["toymaker_id"], name: "index_toys_on_toymaker_id"
  end

  create_table "toys_users", force: :cascade do |t|
    t.datetime "toy_rent_date"
    t.datetime "toy_return_date"
    t.boolean "functional", default: true
    t.integer "user_id"
    t.integer "toy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["toy_id"], name: "index_toys_users_on_toy_id"
    t.index ["user_id"], name: "index_toys_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
