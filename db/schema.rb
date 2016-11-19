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

ActiveRecord::Schema.define(version: 20161118185739) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "concepts", force: :cascade do |t|
    t.string   "name"
    t.decimal  "relevance_score"
    t.string   "encyclopedia_reference"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "sentiment_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entities", force: :cascade do |t|
    t.string   "entity_type"
    t.string   "text"
    t.decimal  "relevance_score"
    t.string   "sentiment_type"
    t.decimal  "sentiment_score"
    t.integer  "reference_count"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "sentiment_id"
  end

  create_table "sentiments", force: :cascade do |t|
    t.integer  "world_leader_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "tweets", force: :cascade do |t|
    t.decimal  "tweet_id"
    t.string   "text"
    t.integer  "world_leader_id"
    t.string   "language"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "world_leaders", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
