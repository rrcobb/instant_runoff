class Option < ActiveRecord::Base
  belongs_to :election
  has_many :votes

end
