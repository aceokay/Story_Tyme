class Image < ActiveRecord::Base
  has_many :additions
  validates :name, :presence => true
end
