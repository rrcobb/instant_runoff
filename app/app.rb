class Application < Sinatra::Base

  # see elections
  get '/' do
    erb :index
  end

  # add election
  # view election (options)
  # add option
  # vote
  # view election results (see the votes)
  # move election to the next round
end
