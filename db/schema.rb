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

ActiveRecord::Schema.define(version: 20131110191300) do

  create_table "favorites", force: true do |t|
    t.integer  "user_id"
    t.integer  "shot_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favorites", ["shot_id"], name: "index_favorites_on_shot_id", using: :btree
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id", using: :btree

  create_table "shots", force: true do |t|
    t.string   "image"
    t.string   "url"
    t.integer  "visible",     default: 0, null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "tw_handler"
  end

  create_table "taggings", force: true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 64
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: true do |t|
    t.string "name"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "nick"
    t.string   "provider"
    t.string   "uid"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_url"
  end

end
