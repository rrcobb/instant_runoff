class Election < ActiveRecord::Base
  has_many :rounds
  has_many :options

  enum status: {
    adding_options: 0,
    accepting_votes: 1,
    closed_to_votes: 2,
    winner_announced: 3
  }

  def close
    update(status: :closed_to_votes)
  end

  def finalize
    update(status: :winner_announced)
  end

end
