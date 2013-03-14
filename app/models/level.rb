class Level < ActiveRecord::Base
  attr_accessible :description, :extra, :fun_url, :image_url, :science_url, :title
  has_many :rewards
end
