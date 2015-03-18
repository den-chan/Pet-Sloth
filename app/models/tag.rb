class Tag < ActiveRecord::Base
  validates :title, presence: true
  
  has_many :taggings
  has_many :users, through: :taggings, source: :taggable, source_type: "User"
  has_many :requests, through: :taggings, source: :taggable, source_type: "Request"
end