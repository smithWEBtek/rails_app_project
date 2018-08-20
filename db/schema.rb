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

ActiveRecord::Schema.define(version: 2018_08_20_210329) do

  create_table "bourbon_stockists", force: :cascade do |t|
    t.text "notes"
    t.integer "bourbon_id"
    t.integer "stockist_id"
    t.index ["bourbon_id"], name: "index_bourbon_stockists_on_bourbon_id"
    t.index ["stockist_id"], name: "index_bourbon_stockists_on_stockist_id"
  end

  create_table "bourbons", force: :cascade do |t|
    t.string "name"
    t.string "grain"
    t.integer "age"
    t.string "description"
    t.integer "distillery_id"
  end

  create_table "distilleries", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stockists", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "email"
    t.string "image"
    t.string "uid"
  end

end
