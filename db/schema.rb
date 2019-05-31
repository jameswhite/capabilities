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

ActiveRecord::Schema.define(version: 2019_05_31_021333) do

  create_table "applications", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "architectures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "capabilities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "capability_dependencies", force: :cascade do |t|
    t.bigint "parent_id"
    t.bigint "required_id"
  end

  create_table "host_systems", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "implementations", force: :cascade do |t|
    t.string "name"
    t.integer "language_id"
    t.integer "capability_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["capability_id"], name: "index_implementations_on_capability_id"
    t.index ["language_id"], name: "index_implementations_on_language_id"
  end

  create_table "implementations_platforms", id: false, force: :cascade do |t|
    t.integer "platform_id", null: false
    t.integer "implementation_id", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operating_systems", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "platforms", force: :cascade do |t|
    t.string "name"
    t.integer "host_system_id"
    t.integer "operating_system_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["host_system_id"], name: "index_platforms_on_host_system_id"
    t.index ["operating_system_id"], name: "index_platforms_on_operating_system_id"
  end

end
