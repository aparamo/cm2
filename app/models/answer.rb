class Answer < ActiveRecord::Base
  attr_accessible :ex, :ex2, :explanation, :i, :i2, :puzzle_id, :title, :video
  belongs_to :puzzle
end
