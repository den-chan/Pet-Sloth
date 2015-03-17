class CandidateTag < ActiveRecord::Base
  validates :title, presence: true
end