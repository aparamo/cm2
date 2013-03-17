class Level < ActiveRecord::Base
  attr_accessible :description, :extra, :fun_url, :image_url, :shortd, :science_url, :title, :puzzles_attributes, :unlocked, :num
  has_many :rewards
  has_many :puzzles
  accepts_nested_attributes_for :puzzles, allow_destroy: true
end
