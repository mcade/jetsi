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

ActiveRecord::Schema.define(version: 20140606093656) do

  create_table "currencies", force: true do |t|
    t.string   "name"
    t.string   "region"
    t.decimal  "weeklychange"
    t.decimal  "monthlychange"
    t.decimal  "yearlychange"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "currencyfor"
    t.decimal  "bmi"
    t.string   "livingcost"
    t.string   "currencyname"
    t.integer  "keyid"
    t.string   "wikilink"
  end

  create_table "currency_translations", force: true do |t|
    t.integer  "currency_id", null: false
    t.string   "locale",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "currency_translations", ["currency_id"], name: "index_currency_translations_on_currency_id"
  add_index "currency_translations", ["locale"], name: "index_currency_translations_on_locale"

end
