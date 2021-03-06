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

ActiveRecord::Schema.define(version: 20161109165520) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.text     "title",      null: false
    t.float    "op"
    t.float    "co"
    t.float    "ex"
    t.float    "ag"
    t.float    "ne"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "photo_id"
  end

  create_table "list_items", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "activity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "checked"
  end

  create_table "personalities", force: :cascade do |t|
    t.text     "scores"
    t.float    "op"
    t.float    "co"
    t.float    "ex"
    t.float    "ag"
    t.float    "ne"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "types", force: :cascade do |t|
    t.string   "title"
    t.string   "nickname"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "photo_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",                    null: false
    t.string   "last_name",                     null: false
    t.string   "email",                         null: false
    t.integer  "personality_id"
    t.string   "password_digest"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.float    "comfortzone",     default: 0.0
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "activity_id"
    t.boolean  "vote_value"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
