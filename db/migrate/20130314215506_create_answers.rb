class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :title
      t.text :explanation
      t.string :ex
      t.string :ex2
      t.integer :puzzle_id
      t.string :i
      t.string :i2
      t.string :video

      t.timestamps
    end
  end
end
