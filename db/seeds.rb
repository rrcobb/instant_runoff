Election.create(name: "Class President", description: "Brookvale Middle School Mr. Warner's 7th Grade Class needs a president! We're using instant runoff (ranked choice) voting for the election, to best represent the voter's interests.")
Election.create(name: "Best Ice Cream Flavor", description: "We need to know")
Election.create(name: "National Health Care System", description: "How should we best provide health care for millions of Americans?")


Option.create(name: "Rob C", election_id: 1)
Option.create(name: "Andrew C", election_id: 1)
Option.create(name: "Malted March Madness", election_id: 2)
Option.create(name: "Mint Chocolate chip", election_id: 2)

Voter.create(name: "Andy C")
Voter.create(name: "Meryl D")
Voter.create(name: "Rachel S")
Voter.create(name: "Niky M")

Vote.create(election_id: 1, option_id: 2, voter_id: 1, rank: 1)
Vote.create(election_id: 1, option_id: 1, voter_id: 1, rank: 2)
Vote.create(election_id: 1, option_id: 1, voter_id: 2, rank: 1)
Vote.create(election_id: 1, option_id: 2, voter_id: 2, rank: 2)
Vote.create(election_id: 1, option_id: 1, voter_id: 3, rank: 1)
Vote.create(election_id: 1, option_id: 2, voter_id: 3, rank: 2)
Vote.create(election_id: 1, option_id: 1, voter_id: 4, rank: 1)
Vote.create(election_id: 1, option_id: 2, voter_id: 4, rank: 2)
