class Round < ActiveRecord::Base
  belongs_to :election
  has_many :options, through: :election
  has_many :votes
end
