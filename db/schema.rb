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

ActiveRecord::Schema.define(version: 20160714120711) do

  create_table "order_items", force: :cascade do |t|
    t.integer  "order_ID"
    t.string   "item_code"
    t.string   "item_description"
    t.integer  "quantity"
    t.decimal  "unit"
    t.decimal  "sub_total"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "poNumber"
    t.date     "date"
    t.integer  "contactID"
    t.decimal  "amount",        default: 0.0, null: false
    t.integer  "unitCount",     default: 1,   null: false
    t.date     "targetDate"
    t.boolean  "accepted",                    null: false
    t.boolean  "ready",                       null: false
    t.boolean  "dispatched",                  null: false
    t.boolean  "delivered",                   null: false
    t.boolean  "invoiced",                    null: false
    t.integer  "invoiceNumber",               null: false
    t.boolean  "Paid",                        null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
