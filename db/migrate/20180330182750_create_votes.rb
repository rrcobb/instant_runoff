class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|g
    end
    add_index :votes, [:voter_id, :election_id], unique: true
  end
end
