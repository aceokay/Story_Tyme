class Addition < ActiveRecord::Base
  belongs_to :story
  belongs_to :image
  validates :body, :presence => true
  validates :author, :presence => true
end
