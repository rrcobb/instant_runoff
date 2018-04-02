class Election < ActiveRecord::Base
  has_many :rounds
  has_many :options
  has_many :votes, through: :options
  has_many :voters, through: :votes

  # Core logic for deciding the winner of the election
  # Does a candidate have a majority of the votes?
  #   If yes, declare winner!
  #   If no, eliminate the last-ranked candidate, and reapportion that candidate's voters according to their next-ranked votes (if there are any)
  # recursive - will do a query for votes each round,

  def winner(remaining_option_ids = options.pluck(:id))
    counts = vote_counts(remaining_option_ids)
    total = counts.values.flatten.count
    top, top_count = counts.max_by { |k, v| v }
    # if the option is a majority, it wins.
    # otherwise, recurse, dropping the last place option
    (top_count.to_f / total) > 0.5 ?
    Option.find(top) :
    winner(counts.sort_by { |k, v| v }.map(&:first).first(counts.length - 1))
  end

  def vote_counts(option_ids)
    votes.where(option_id: option_ids)
    .order(:rank)
    .group_by(&:voter_id)
    .map { |k, v| v.first}
    .group_by(&:option_id)
    .transform_values(&:count)
  end
end
