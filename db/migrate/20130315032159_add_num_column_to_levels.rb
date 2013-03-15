class AddNumColumnToLevels < ActiveRecord::Migration
  def change
    add_column :levels, :num, :integer
  end
end
