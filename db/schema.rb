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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140530153913) do

  create_table "cards", :id => false, :force => true do |t|
    t.integer "id"
    t.string  "rarity"
    t.string  "card_type"
    t.string  "faction"
    t.string  "alignment"
    t.string  "name"
    t.string  "alter_ego"
    t.integer "energy"
    t.integer "shield"
    t.boolean "agility"
    t.boolean "ranged_attack"
    t.boolean "energy_attack"
    t.boolean "elasticity"
    t.boolean "genius"
    t.boolean "blades"
    t.boolean "magic"
    t.boolean "regeneration"
    t.boolean "super_strength"
    t.boolean "telekinesis"
    t.boolean "telepathy"
    t.boolean "flying"
    t.boolean "anticipation"
    t.boolean "unforeseen"
    t.text    "text"
  end

end
