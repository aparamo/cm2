class CreatePuzzles < ActiveRecord::Migration
  def change
    create_table :puzzles do |t|
      t.string :title
      t.text :question
      t.string :ex
      t.string :ex2
      t.integer :level_id
      t.string :i
      t.string :i2
      t.string :video

      t.timestamps
    end
  end
end
