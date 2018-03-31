class Vote < ActiveRecord::Base
  belongs_to :election
  belongs_to :option
  belongs_to :voter

  validate :matches_option_election_id

  def matches_option_election_id
    if self.election_id != self.option.election_id
      errors.add(:election_id, 'election id must match option.election_id')
    end
  end

end
