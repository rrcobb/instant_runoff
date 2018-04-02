class CreateVoters < ActiveRecord::Migration[5.1]
  def change
    create_table :voters do |t|
      t.string :name, null: false
    end
    add_index :voters, :name, unique: true
  end
end
