class CreateCard < ActiveRecord::Migration
  def up
    create_table :cards, id: false do |t|
      t.column :id, :integer, options: 'PRIMARY KEY'
      t.column :rarity, :string
      t.column :card_type, :string
      t.column :faction, :string
      t.column :alignment, :string
      t.column :name, :string
      t.column :alter_ego, :string
      t.column :energy, :integer
      t.column :shield, :integer

      t.column :agility, :boolean
      t.column :ranged_attack, :boolean
      t.column :energy_attack, :boolean
      t.column :elasticity, :boolean
      t.column :genius, :boolean
      t.column :blades, :boolean
      t.column :magic, :boolean
      t.column :regeneration, :boolean
      t.column :super_strength, :boolean
      t.column :telekinesis, :boolean
      t.column :telepathy, :boolean
      t.column :flying, :boolean

      t.column :anticipation, :boolean
      t.column :unforeseen, :boolean

      t.column :text, :text
    end
  end

  def down
    drop_table :cards
  end
end
