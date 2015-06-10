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

ActiveRecord::Schema.define(version: 20150610174730) do

  create_table "events", force: :cascade do |t|
    t.string   "title",           limit: 255
    t.text     "description"
    t.datetime "start_time"
    t.string   "url",             limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "venue_id"
    t.integer  "source_id"
    t.integer  "duplicate_of_id"
    t.datetime "end_time"
    t.integer  "version"
    t.string   "rrule",           limit: 255
    t.text     "venue_details"
    t.boolean  "locked",                      default: false
  end

  create_table "sources", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "url",         limit: 255
    t.datetime "imported_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "reimport"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id",                    null: false
    t.integer  "taggable_id",               null: false
    t.string   "taggable_type", limit: 255, null: false
    t.integer  "tagger_id"
    t.string   "tagger_type",   limit: 255
    t.string   "context",       limit: 255
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", force: :cascade do |t|
    t.string "name", limit: 255, null: false
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true

  create_table "venues", force: :cascade do |t|
    t.string   "title",           limit: 255
    t.text     "description"
    t.string   "address",         limit: 255
    t.string   "url",             limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "street_address",  limit: 255
    t.string   "locality",        limit: 255
    t.string   "region",          limit: 255
    t.string   "postal_code",     limit: 255
    t.string   "country",         limit: 255
    t.decimal  "latitude",                    precision: 7, scale: 4
    t.decimal  "longitude",                   precision: 7, scale: 4
    t.string   "email",           limit: 255
    t.string   "telephone",       limit: 255
    t.integer  "source_id"
    t.integer  "duplicate_of_id"
    t.boolean  "closed",                                              default: false
    t.boolean  "wifi",                                                default: false
    t.text     "access_notes"
    t.integer  "events_count"
  end

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",  limit: 255, null: false
    t.integer  "item_id",                null: false
    t.string   "event",      limit: 255, null: false
    t.string   "whodunnit",  limit: 255
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"

end
