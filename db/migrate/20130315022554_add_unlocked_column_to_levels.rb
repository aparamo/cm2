class AddUnlockedColumnToLevels < ActiveRecord::Migration
  def change
    add_column :levels, :unlocked, :boolean
  end
end
