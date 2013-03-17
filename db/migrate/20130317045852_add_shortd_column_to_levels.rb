class AddShortdColumnToLevels < ActiveRecord::Migration
  def change
    add_column :levels, :shortd, :text
  end
end
