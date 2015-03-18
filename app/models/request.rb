class Request < ActiveRecord::Base
  validates :title, presence: true
  validates :public, presence: true
  
  belongs_to :user
  has_many :collaborations
  has_many :taggings, as: :taggable
  has_many :tags, through: :taggable
  has_many :conversations
  has_many :comments, through: :threads
end