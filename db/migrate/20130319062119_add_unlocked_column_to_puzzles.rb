class AddUnlockedColumnToPuzzles < ActiveRecord::Migration
  def change
    add_column :puzzles, :unlocked, :boolean
  end
end
