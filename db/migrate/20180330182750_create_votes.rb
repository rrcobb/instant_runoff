class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.integer :election_id
      t.integer :option_id
      t.integer :voter_id
    end
    add_index :votes, [:voter_id, :election_id], unique: true
  end
end
