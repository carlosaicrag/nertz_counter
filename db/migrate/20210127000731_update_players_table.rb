class UpdatePlayersTable < ActiveRecord::Migration[6.0]
  def change
    add_index :players, :username, unique: true
  end
end
