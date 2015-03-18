class User < ActiveRecord::Base
  validates :username, presence: true
  
  has_many :requests
  has_many :taggings, as: :taggable
  has_many :tags, through: :taggable
  has_many :conversations
  has_many :comments, through: :threads
  
  accepts_nested_attributes_for :tags
end