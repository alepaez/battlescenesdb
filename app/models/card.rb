class Card < ActiveRecord::Base
  attr_accessible :id, :name, :rarity, :alter_ego, :card_type, :alignment, :faction, :energy, :shield, :agility, :ranged_attack, :energy_attack, :elasticity, :genius, :blades, :magic, :regeneration, :super_strength, :telekinesis, :telepathy, :flying, :text, :hability_cost, :hability_name, :hability_text, :hability_type
  
end
