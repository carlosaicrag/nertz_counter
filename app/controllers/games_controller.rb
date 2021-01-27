class GamesController < ApplicationController
  def index 
    @games = Game.all
  end

  def new
    @players = Player.all
    render :new
  end

  def create
    @game = Game.new()
    
    if @game.save
      params[:game][:player_ids].each do |id|
        GamePlayer.create(game_id: @game.id, player_id: id)
      end
      redirect_to game_url(@game.id)
    else
      redirect_to games_url
    end

  end

  def show
    @game = Game.includes(:rounds,:players).find_by(id: params[:id])
    render :show
  end

  private
  def game_params
    # params.require(:game).permit(player_ids: [])
  end
end
