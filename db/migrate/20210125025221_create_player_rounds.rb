class CreatePlayerRounds < ActiveRecord::Migration[6.0]
  def change
    create_table :player_rounds do |t|
      t.integer :round_id, null:false
      t.integer :player_id, null:false
      t.integer :score, null:false

      t.timestamps
    end

    add_index :player_rounds, [:round_id, :player_id], unique: true
  end
end
