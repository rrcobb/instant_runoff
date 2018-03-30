class Option < ActiveRecord::Base
  belongs_to :election
  has_many :votes
  has_many :voters, through: :votes
  enum status: {
    available: 0,
    lost: 1,
    won: 2
  }
end
