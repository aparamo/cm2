class AddAnswerColumnToPuzzles < ActiveRecord::Migration
  def change
    add_column :puzzles, :answer, :string
  end
end
