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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110802215534) do

  create_table "clubs", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "location"
    t.string   "district"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", :force => true do |t|
    t.integer  "round_id"
    t.integer  "club_id"
    t.date     "day"
    t.time     "hour"
    t.integer  "player_1_id"
    t.integer  "player_2_id"
    t.integer  "winner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games_groups", :force => true do |t|
    t.integer  "game_id"
    t.integer  "player_id"
    t.integer  "games"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "levels", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "playeremails", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "playerlevels", :force => true do |t|
    t.integer  "player_id"
    t.integer  "level_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "playerphones", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", :force => true do |t|
    t.string   "surname"
    t.string   "forename"
    t.string   "plays"
    t.string   "residence"
    t.date     "birthday"
    t.decimal  "height"
    t.decimal  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "round_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rounds", :force => true do |t|
    t.string   "name"
    t.integer  "tournament_id"
    t.integer  "round_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "super_tiebreaks", :force => true do |t|
    t.integer  "game_id"
    t.integer  "player_id"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tiebreaks", :force => true do |t|
    t.integer  "games_group_id"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tournaments", :force => true do |t|
    t.string   "name"
    t.integer  "level_id"
    t.integer  "tournamenttype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tournamenttypes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
