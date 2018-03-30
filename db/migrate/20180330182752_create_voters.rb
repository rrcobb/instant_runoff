class CreateVoters < ActiveRecord::Migration[5.1]
  def change
    create_table :votes do |t|
      t.string :name
    end
  end
end
