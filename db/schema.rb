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

ActiveRecord::Schema.define(version: 20140722042752) do

  create_table "budgets", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "budgets_members", force: true do |t|
    t.integer "member_id"
    t.integer "budget_id"
  end

  add_index "budgets_members", ["budget_id"], name: "index_budgets_members_on_budget_id"
  add_index "budgets_members", ["member_id"], name: "index_budgets_members_on_member_id"

  create_table "line_items", force: true do |t|
    t.string   "description"
    t.decimal  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "budget_id"
    t.integer  "member_id"
  end

  add_index "line_items", ["member_id"], name: "index_line_items_on_member_id"

  create_table "members", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end