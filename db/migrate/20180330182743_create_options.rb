class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
      t.integer :election_id, null: false
      t.string :name, null: false
    end
    add_index :options, [:election_id, :name], unique: true
  end
end
