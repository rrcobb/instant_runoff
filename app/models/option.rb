class Option < ActiveRecord::Base
  belongs_to :election
  has_many :votes
  has_many :voters, through: :votes
end
