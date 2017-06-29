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

ActiveRecord::Schema.define(version: 20170613131802) do

  create_table "brains", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "flavor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "iq"
    t.boolean  "fresh"
    t.integer  "zombie_id"
    t.index ["zombie_id"], name: "index_brains_on_zombie_id", using: :btree
  end

  create_table "zombies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.text     "bio",        limit: 65535
    t.integer  "age"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "email"
    t.boolean  "rotten"
    t.string   "avatar"
  end

  add_foreign_key "brains", "zombies"
end
