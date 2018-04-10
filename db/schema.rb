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

ActiveRecord::Schema.define(version: 20180410011019) do

  create_table "artists", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buiers", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "compact_disk_genders", force: :cascade do |t|
    t.integer "compact_disk_id"
    t.integer "gender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compact_disk_id"], name: "index_compact_disk_genders_on_compact_disk_id"
    t.index ["gender_id"], name: "index_compact_disk_genders_on_gender_id"
  end

  create_table "compact_disks", force: :cascade do |t|
    t.text "name"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sells", force: :cascade do |t|
    t.integer "buier_id"
    t.integer "compact_disk_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["buier_id"], name: "index_sells_on_buier_id"
    t.index ["compact_disk_id"], name: "index_sells_on_compact_disk_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.string "password"
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
