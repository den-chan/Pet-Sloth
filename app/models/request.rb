class Request < ActiveRecord::Base
  belongs_to :user
  has_many :collaborations
  has_many :tags, as: :taggable
  has_many :conversations
  has_many :comments, through: :threads
end