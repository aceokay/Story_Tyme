class Story < ActiveRecord::Base
  has_many :additions
  validates :title, :presence => true
  validates :body, :presence => true
  validates :creator, :presence => true
end
