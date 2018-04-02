# Instant Runoff Voting

see, eg. [Wikipedia](https://en.wikipedia.org/wiki/Instant-runoff_voting), [Youtube](https://www.youtube.com/watch?v=_5SLQXNpzsk)

This is a Sinatra / activerecord / sqlite3 app for holding little instant runoff votes.

Currently, there is a voter model, but no actual authentication or permissioning - anyone can create elections, add options, and cast votes, no matter who they are. The app asks for a voter's name, but it's just a unique string, so take it as it is.

Mostly just a sinatra demo.

## Models

### Election

* name
* description
* `has_many` options
* `has_many` votes

### Option

* name
* `belongs_to` election
* `has_many` votes

### Vote

* rank
* `belongs_to` election
* `belongs_to` option
* `belongs_to` voter
* one vote per rank voter per election (unique index on voter_id, rank, election_id)
* application level validation: `election_id == option.election_id`

### Voter

* name (unique)
* `has_many` votes
