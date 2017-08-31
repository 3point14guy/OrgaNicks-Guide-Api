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

ActiveRecord::Schema.define(version: 20170831015657) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dinner_and_diners", force: :cascade do |t|
    t.integer  "vegetables_id"
    t.integer  "pests_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["pests_id"], name: "index_dinner_and_diners_on_pests_id", using: :btree
    t.index ["vegetables_id"], name: "index_dinner_and_diners_on_vegetables_id", using: :btree
  end

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id", using: :btree
  end

  create_table "gardens", force: :cascade do |t|
    t.integer  "vegetable_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id"], name: "index_gardens_on_user_id", using: :btree
    t.index ["vegetable_id"], name: "index_gardens_on_vegetable_id", using: :btree
  end

  create_table "pests", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["token"], name: "index_users_on_token", unique: true, using: :btree
  end

  create_table "vegetables", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "image",      null: false
    t.text     "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "dinner_and_diners", "pests", column: "pests_id"
  add_foreign_key "dinner_and_diners", "vegetables", column: "vegetables_id"
  add_foreign_key "examples", "users"
  add_foreign_key "gardens", "users"
  add_foreign_key "gardens", "vegetables"
end
