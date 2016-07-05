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

ActiveRecord::Schema.define(version: 20160621120143) do

  create_table "electoraldata", force: :cascade do |t|
    t.string   "region",        limit: 50
    t.string   "constituency",  limit: 50
    t.string   "electoralarea", limit: 50
    t.string   "psname",        limit: 50
    t.string   "edpscode",      limit: 50
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "get_sms", force: :cascade do |t|
    t.string   "recipients",       limit: 50
    t.string   "msisdn",           limit: 50
    t.string   "keyword",          limit: 50
    t.string   "smstext",          limit: 255
    t.datetime "messagetimestamp"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "voteresults", force: :cascade do |t|
    t.string   "pscode",         limit: 50
    t.string   "typeofelection", limit: 50
    t.string   "candidate",      limit: 50
    t.string   "party",          limit: 50
    t.integer  "votes",          limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "voteresults", ["pscode"], name: "index_voteresults_on_pscode", using: :btree

end
