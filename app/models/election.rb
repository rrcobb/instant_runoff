class Election < ActiveRecord::Base
  has_many :options
  has_many :votes, through: :options
  has_many :voters, through: :votes
end
