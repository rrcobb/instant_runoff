class CreateElections < ActiveRecord::Migration[5.1]
  def change
    create_table :elections do |t|
      t.string :name
      t.text :description
      t.integer :vote_threshold
      t.integer :status, null: false, default: 0
      t.timestamps
    end
  end
end
