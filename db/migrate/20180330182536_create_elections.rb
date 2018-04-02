class CreateElections < ActiveRecord::Migration[5.1]
  def change
    create_table :elections do |t|
      t.string :name, null: false
      t.text :description
      t.integer :status, null: false, default: 0
      t.timestamps
    end
  end
end
