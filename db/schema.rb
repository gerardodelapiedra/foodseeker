# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150529225941) do

  create_table "reviews", force: :cascade do |t|
    t.integer  "venue_id"
    t.integer  "general_rating"
    t.boolean  "parking_lot"
    t.boolean  "parking_street"
    t.boolean  "parking_valet"
    t.string   "dish_name"
    t.integer  "dish_rating"
    t.integer  "atmosphere_rating"
    t.text     "dish_comments"
    t.text     "atmosphere_comments"
    t.boolean  "sit_down"
    t.float    "average_per_person_price"
    t.text     "general_comments"
    t.boolean  "price_with_drinks"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "venues", force: :cascade do |t|
    t.string   "address"
    t.string   "main_cuisine"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
