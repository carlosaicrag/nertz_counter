class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.boolean :end, default: false, null:false
      t.timestamps
    end

    add_index :games, :end
  end
end
