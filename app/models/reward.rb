class Reward < ActiveRecord::Base
  attr_accessible :description, :file_url, :level_id, :title, :unlocked
  belongs_to :level
end
