class ChangeRoundScoresTableName < ActiveRecord::Migration[6.0]
  def change
    rename_table :round_scores, :rounds
  end
end
