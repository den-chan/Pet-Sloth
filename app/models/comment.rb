class Comment < ActiveRecord::Base
  validates :index, presence: true
  
  belongs_to :conversation
end