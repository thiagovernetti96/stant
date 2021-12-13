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

ActiveRecord::Schema.define(version: 2021_12_13_181545) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conferencia", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "palestras", force: :cascade do |t|
    t.string "name"
    t.bigint "session_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["session_id"], name: "index_palestras_on_session_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.bigint "tracks_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tracks_id"], name: "index_sessions_on_tracks_id"
  end

  create_table "tracks", force: :cascade do |t|
    t.string "name"
    t.bigint "conferencia_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["conferencia_id"], name: "index_tracks_on_conferencia_id"
  end

  add_foreign_key "palestras", "sessions"
  add_foreign_key "sessions", "tracks", column: "tracks_id"
end
