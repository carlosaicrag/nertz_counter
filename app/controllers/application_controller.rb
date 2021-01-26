class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  helper_method :player_score, :total_points

  def player_score(player,round)
    PlayerRound.find_by(player_id: player.id,round_id: round.id).score
  end

  def total_points(game,player_to_find)
    score = 0 

    game.rounds.each do |round|
      round.players.each do |player|
        if player.id == player_to_find.id
          score += player_score(player,round)
        end
      end
    end
    score 
  end
end
