class User < ActiveRecord::Base
  has_many :requests
  has_many :tags, as: :taggable
  has_many :conversations
  has_many :comments, through: :threads
end