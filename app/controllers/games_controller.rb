class GamesController < ApplicationController
  def index 
    @games = Game.all
  end

  def show
    @game = Game.includes(:rounds,:players).find_by(id: params[:id])

    render :show
  end
end
