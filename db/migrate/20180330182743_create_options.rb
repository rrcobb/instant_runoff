class CreateOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
      t.integer :election_id
      t.string :name
      t.string :status
    end
  end
end
