# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_03_06_105939) do
  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "sound"
    t.text "meme_phrase"
    t.string "provisional"
    t.string "url"
    t.string "image"
    t.string "pdf"
    t.integer "age"
    t.string "size"
    t.string "coat_length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "country_id", null: false
    t.integer "group_id", null: false
    t.integer "section_id", null: false
    t.index ["country_id"], name: "index_dogs_on_country_id"
    t.index ["group_id"], name: "index_dogs_on_group_id"
    t.index ["section_id"], name: "index_dogs_on_section_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "dogs", "countries"
  add_foreign_key "dogs", "groups"
  add_foreign_key "dogs", "sections"
end
