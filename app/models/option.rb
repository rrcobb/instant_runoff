class Option < ActiveRecord::Base
  belongs_to :election
  has_many :votes
  has_many :voters, through: :votes

  PARAM_NAME = "option_rank_".freeze

  def self.option_id_from_param_name(param_name)
    param_name.split(PARAM_NAME).last.to_i
  end

  def param_name
    "#{PARAM_NAME}#{id}"
  end
end
