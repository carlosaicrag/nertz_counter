class PlayerRound < ApplicationRecord
  belongs_to :player,
  foreign_key: :player_id,
  class_name: :Player

  belongs_to :round,
  foreign_key: :round_id,
  class_name: :Round
end
