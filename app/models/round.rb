class Round < ApplicationRecord
  belongs_to :game,
  foreign_key: :game_id,
  class_name: :Game

  has_many :player_rounds,
  foreign_key: :round_id,
  class_name: :PlayerRound

  has_many :players,
  through: :player_rounds,
  source: :player
end
