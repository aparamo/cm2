class AddRewardIdToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :reward_id, :integer
  end
end
