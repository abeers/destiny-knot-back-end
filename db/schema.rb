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

ActiveRecord::Schema.define(version: 20161109040741) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string   "identifier"
    t.integer  "generation_id"
    t.integer  "is_main_series"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "examples", ["user_id"], name: "index_examples_on_user_id", using: :btree

  create_table "pokemon_abilities", force: :cascade do |t|
    t.integer  "pokemon_id"
    t.integer  "ability_id"
    t.integer  "is_hidden"
    t.integer  "slot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pokemon_abilities", ["ability_id"], name: "index_pokemon_abilities_on_ability_id", using: :btree
  add_index "pokemon_abilities", ["pokemon_id"], name: "index_pokemon_abilities_on_pokemon_id", using: :btree

  create_table "pokemon_stats", force: :cascade do |t|
    t.integer  "pokemon_id"
    t.integer  "stat_id"
    t.integer  "base_stat"
    t.integer  "effort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pokemon_stats", ["pokemon_id"], name: "index_pokemon_stats_on_pokemon_id", using: :btree
  add_index "pokemon_stats", ["stat_id"], name: "index_pokemon_stats_on_stat_id", using: :btree

  create_table "pokemon_types", force: :cascade do |t|
    t.integer  "pokemon_id"
    t.integer  "type_id"
    t.integer  "slot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pokemon_types", ["pokemon_id"], name: "index_pokemon_types_on_pokemon_id", using: :btree
  add_index "pokemon_types", ["type_id"], name: "index_pokemon_types_on_type_id", using: :btree

  create_table "pokemons", force: :cascade do |t|
    t.string   "identifier"
    t.integer  "species_id"
    t.integer  "height"
    t.integer  "weight"
    t.integer  "base_experience"
    t.integer  "order"
    t.integer  "is_default"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "stats", force: :cascade do |t|
    t.integer  "damage_class_id"
    t.string   "identifier"
    t.integer  "is_battle_only"
    t.integer  "game_index"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "team_members", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "pokemon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "team_members", ["pokemon_id"], name: "index_team_members_on_pokemon_id", using: :btree
  add_index "team_members", ["team_id"], name: "index_team_members_on_team_id", using: :btree
  add_index "team_members", ["user_id"], name: "index_team_members_on_user_id", using: :btree

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "teams", ["user_id"], name: "index_teams_on_user_id", using: :btree

  create_table "type_efficacies", force: :cascade do |t|
    t.integer  "damage_type_id", null: false
    t.integer  "target_type_id", null: false
    t.integer  "damage_factor"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "types", force: :cascade do |t|
    t.string   "identifier"
    t.integer  "generation_id"
    t.integer  "damage_class_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "examples", "users"
  add_foreign_key "pokemon_abilities", "abilities"
  add_foreign_key "pokemon_abilities", "pokemons"
  add_foreign_key "pokemon_stats", "pokemons"
  add_foreign_key "pokemon_stats", "stats"
  add_foreign_key "pokemon_types", "pokemons"
  add_foreign_key "pokemon_types", "types"
  add_foreign_key "team_members", "pokemons"
  add_foreign_key "team_members", "teams"
  add_foreign_key "team_members", "users"
  add_foreign_key "teams", "users"
end
