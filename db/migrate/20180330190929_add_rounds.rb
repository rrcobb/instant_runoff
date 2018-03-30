class AddRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :rounds do |t|
      t.integer :election_id
      t.timestamps
    end
  end
end
