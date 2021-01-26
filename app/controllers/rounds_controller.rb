class RoundsController < ApplicationController

  def create
    @round = Round.new
    @round.game_id = params[:game_id]
    @game = Game.includes(:rounds,:players).find_by(id: params[:game_id])
    player_rounds = []
    bool = true

    params.keys.each do |key|
      if key.include?("player")
        if params[key][:pos_score].length == 0 || params[key][:neg_score].length == 0 || !!!(params[key][:pos_score] =~ /\A[-+]?[0-9]+\z/) || !!!(params[key][:neg_score] =~ /\A[-+]?[0-9]+\z/)
          flash.now[:errors] = "you inputed an invalid score"
          bool = false
        else
          player_rounds.push(PlayerRound.new(score: (params[key][:pos_score].to_i - 2*params[key][:neg_score].to_i), player_id: params[key][:id]))
        end
      end
    end
    
    if bool and @round.save 
      player_rounds.each do |player_round|
        player_round.round_id = @round.id
        player_round.save
      end
      redirect_to game_url(params[:game_id])
    else
      flash[:errors] = "there was an error"
      redirect_to game_url(params[:game_id])            
    end
  end
  
end
