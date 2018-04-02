class Vote < ActiveRecord::Base
  belongs_to :election
  belongs_to :option
  belongs_to :voter

  validate :matches_option_election_id
  validate :possible_rank

  def matches_option_election_id
    if self.election_id != self.option.election_id
      errors.add(:election_id, 'election id must match option.election_id')
    end
  end

  def possible_rank
    if self.rank < 1 || self.rank > self.election.options.count
      errors.add(:rank, 'rank must be in the range of the available options')
    end
  end

  # create votes for each of the options ranked on the ballot
  def self.mark_ballot(voter, election, params)
    params
    .select { |k,v| k.to_s.match(/option_rank_/) }
    .map do |param_name, rank|
      Vote.create(
        voter: voter,
        election: election,
        rank: rank,
        option_id: Option.option_id_from_param_name(param_name)
      )
    end
  end
end
