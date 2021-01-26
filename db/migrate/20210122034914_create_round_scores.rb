class CreateRoundScores < ActiveRecord::Migration[6.0]
  def change
    create_table :round_scores do |t|
      t.integer :game_id, null:false

      t.timestamps
    end

    add_index :round_scores, :game_id
  end
end
