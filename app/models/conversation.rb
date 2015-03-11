class Conversation < ActiveRecord::Base
  belongs_to :request
  belongs_to :user
  has_many :comments
end