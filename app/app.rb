class Application < Sinatra::Base

  # see elections
  get '/' do
    @elections = Election.last(10)
    erb :index
  end

  # add election
  post '/election' do
    @election = Election.create(params)
    erb :election
  end

  # view election (options)
  get '/election/:id' do
    @election = Election.find(params[:id].to_i)
    erb :election
  end

  # add option
  post '/election/:id/option' do
    @election = Election.find(params[:id].to_i)
    option = Option.create(params.slice(:name))
    @election.options << option
    erb :election
  end

  # vote
  post '/election/:id/vote' do
    erb  :election
  end

  # view election results (see the votes)
  get '/election/:id/results' do
    @election = Election.find(params[:id])
    erb :results
  end

  # move election to the next round
  post '/elections/:id/next' do
    @election = Election.find(params[:id])
    @election.next_round
    erb :election
  end
end
