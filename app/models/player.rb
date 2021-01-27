class Player < ApplicationRecord
  has_many :player_rounds,
  foreign_key: :player_id,
  class_name: :PlayerRound

  has_many :rounds,
  through: :player_rounds,
  source: :round 

  has_many :game_players,
  foreign_key: :player_id,
  class_name: :GamePlayer

  has_many :games,
  through: :game_players,
  source: :game
end
