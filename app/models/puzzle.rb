class Puzzle < ActiveRecord::Base
  attr_accessible :ex, :ex2, :i, :i2, :level_id, :question, :title, :video, :answers_attributes, :answer, :unlocked, :reward_id
  belongs_to :level
  has_many :answers
  accepts_nested_attributes_for :answers, allow_destroy: true
end
