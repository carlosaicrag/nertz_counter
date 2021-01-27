class Game < ApplicationRecord
  has_many :rounds,
  foreign_key: :game_id,
  class_name: :Round

  has_many :player_rounds,
  through: :rounds,
  source: :player_rounds

  has_many :game_players,
  foreign_key: :game_id,
  class_name: :GamePlayer,
  inverse_of: :game

  has_many :players,
  through: :game_players,
  source: :player

end
