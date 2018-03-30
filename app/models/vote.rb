class Vote < ActiveRecord::Base
  belongs_to :election
  belongs_to :option
  belongs_to :voter
  
end
