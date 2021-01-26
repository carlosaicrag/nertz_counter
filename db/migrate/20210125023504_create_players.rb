class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :username, null: false
      t.timestamps
    end
  end
end
