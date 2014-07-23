class ChangeCardHabilityFields < ActiveRecord::Migration
  def up
    add_column :cards, :hability_cost, :integer
    add_column :cards, :hability_name, :string
    add_column :cards, :hability_text, :text
    add_column :cards, :hability_type, :string
    remove_column :cards, :anticipation
    remove_column :cards, :unforeseen
  end

  def down
    add_column :cards, :unforeseen, :boolean
    add_column :cards, :anticipation, :boolean
    remove_column :cards, :hability_type
    remove_column :cards, :hability_text
    remove_column :cards, :hability_name
    remove_column :cards, :hability_cost
  end
end
