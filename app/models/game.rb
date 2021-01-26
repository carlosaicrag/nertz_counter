class Game < ApplicationRecord
  has_many :rounds,
  foreign_key: :game_id,
  class_name: :Round

  has_many :player_rounds,
  through: :rounds,
  source: :player_rounds

  has_many :players,
  through: :player_rounds,
  source: :player

end
