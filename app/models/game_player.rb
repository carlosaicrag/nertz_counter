class GamePlayer < ApplicationRecord
  belongs_to :game,
    foreign_key: :game_id,
    class_name: :Game

  belongs_to :player,
    foreign_key: :player_id,
    class_name: :Player
end
