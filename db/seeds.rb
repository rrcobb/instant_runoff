Election.create(name: "Class President", description: "Brookvale Middle School Mr. Warner's 7th Grade Class needs a president! We're using instant runoff (ranked choice) voting for the election, to best represent the voter's interests.", vote_threshold: 10)
Election.create(name: "Best Ice Cream Flavor", description: "We need to know", vote_threshold: 5)
Election.create(name: "National Health Care System", description: "How should we best provide health care for millions of Americans?", vote_threshold: 10000000)


Option.create(name: "Rob C", election_id: 1, status: 0)
Option.create(name: "Andrew C", election_id: 1, status: 0)
Option.create(name: "Malted March Madness", election_id: 2, status: 0)
Option.create(name: "Mint Chocolate chip", election_id: 2, status: 0)

Voters.create(name: "Andy C")
Voters.create(name: "Meryl D")
Voters.create(name: "Rachel S")

Votes.create(election_id: 1, option_id: 2, voter_id: 1)
Votes.create(election_id: 1, option_id: 1, voter_id: 2)
Votes.create(election_id: 1, option_id: 2, voter_id: 3)
Votes.create(election_id: 2, option_id: 2, voter_id: 1)
Votes.create(election_id: 2, option_id: 1, voter_id: 2)
Votes.create(election_id: 2, option_id: 2, voter_id: 3)
