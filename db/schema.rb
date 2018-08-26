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

ActiveRecord::Schema.define(version: 20180826042730) do

  create_table "add_column_to_menus", force: :cascade do |t|
    t.string "drinkprice"
    t.string "foodprice"
    t.string "otherprice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "arts", force: :cascade do |t|
    t.string "name"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "storename"
    t.string "address"
    t.string "tel"
    t.string "web"
    t.string "time"
    t.string "day"
    t.string "area"
    t.string "how"
    t.string "inttitle1"
    t.string "intcontent1"
    t.string "inttitle2"
    t.string "intcontent2"
    t.string "intprofname"
    t.string "intprofcontent"
    t.string "intprofmenu"
    t.string "images"
    t.string "imagesprof"
    t.string "description"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "menus", force: :cascade do |t|
    t.integer "art_id"
    t.string "drink"
    t.string "food"
    t.string "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "drinkprice"
    t.string "foodprice"
    t.string "otherprice"
    t.index ["art_id"], name: "index_menus_on_art_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

end
