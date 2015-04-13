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

ActiveRecord::Schema.define(version: 20150412234304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "part_of_speech", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meanings", force: :cascade do |t|
    t.text     "text",        null: false
    t.integer  "category_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "meanings", ["text"], name: "index_meanings_on_text", unique: true, using: :btree

  create_table "words", force: :cascade do |t|
    t.text     "text_hindi",     null: false
    t.text     "text_romanized", null: false
    t.integer  "meaning_id",     null: false
    t.integer  "category_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "forvo_url"
  end

  add_index "words", ["text_hindi"], name: "index_words_on_text_hindi", using: :btree
  add_index "words", ["text_romanized"], name: "index_words_on_text_romanized", using: :btree

end
