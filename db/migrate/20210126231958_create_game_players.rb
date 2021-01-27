class CreateGamePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :game_players do |t|
      t.integer :game_id, null:false
      t.integer :player_id, null:false
      t.timestamps
    end

    add_index :game_players, [:game_id,:player_id], unique: true
  end
end
