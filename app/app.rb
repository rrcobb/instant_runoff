class Application < Sinatra::Base
  # see elections
  get '/' do
    @elections = Election.last(10).sort_by { |e| e.created_at }.reverse
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
    option = Option.create(params.slice(:name).merge(election: @election))
    @election.options << option
    erb :election
  end

  post '/election/:id/ballot' do
    @election = Election.find(params[:id].to_i)
    @voter = Voter.find_or_create_by(name: params[:voter_name])
    @votes = Vote.mark_ballot(@voter, @election, params)
    erb :success
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
