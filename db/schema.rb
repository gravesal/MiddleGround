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

ActiveRecord::Schema.define(version: 20151122190018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string   "title",      null: false
    t.string   "location",   null: false
    t.integer  "creator_id", null: false
    t.integer  "friend_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "lat"
    t.float    "long"
    t.string   "type"
  end

  create_table "addresses", force: :cascade do |t|
    t.string   "street",     null: false
    t.string   "type",       null: false
    t.string   "city"
    t.integer  "zip",        null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendships", force: :cascade do |t|
    t.integer  "requester_id",             null: false
    t.integer  "acceptor_id",              null: false
    t.integer  "pending",      default: 1
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",     null: false
    t.string   "phone_number"
    t.string   "email"
    t.string   "uid"
    t.string   "avatar"
    t.string   "lat"
    t.string   "long"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "users", ["username"], name: "index_users_on_username", using: :btree

  create_table "votes", force: :cascade do |t|
    t.integer  "user_id",     null: false
    t.integer  "activity_id", null: false
    t.integer  "value",       null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
