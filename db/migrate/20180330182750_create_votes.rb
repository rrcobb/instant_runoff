class CreateVotes < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.integer :election_id, null: false
      t.integer :option_id, null: false
      t.integer :voter_id, null: false
      t.integer :rank, null: false
    end
    add_index :votes, [:voter_id, :election_id, :rank], unique: true
  end
end
