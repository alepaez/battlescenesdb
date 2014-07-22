class AddHabilityToCard < ActiveRecord::Migration
  def up
    add_column :cards, :hability, :text
  end

  def down
    remove_column :cards, :hability
  end
end
