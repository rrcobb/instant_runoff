# Models for an instant runoff vote

## Election

name
description
status (accepting_votes, accepting_options, closed)
`has_many` options

## Option

name
belongs_to election
has_many votes
status (available, knocked out, victorious)

## Vote

belongs_to election
belongs_to option
belongs_to (voter)
constraint - one vote per voter per election (unique index on voter_id, election_id)
constraint - election_id = option.election_id

## Voter

has_many votes
name (unique)
