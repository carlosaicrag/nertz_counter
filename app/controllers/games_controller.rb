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
      redirect_to game_url(@game.id)
    else
      redirect_to games_url
    end

  end

  def show
    @game = Game.includes(:rounds,:players).find_by(id: params[:id])
    
    render :show
  end
end
