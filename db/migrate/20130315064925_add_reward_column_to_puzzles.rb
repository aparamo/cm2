class AddRewardColumnToPuzzles < ActiveRecord::Migration
  def change
    add_column :puzzles, :reward_id, :integer
  end
end
