class PlayerRoundsController < ApplicationController
    def create
        @round = Round.find_by(id: params[:round][:id])
        @round.game_id = params[:game_id]

        params.keys.each do |key|
            if key.include?("player")
               if !PlayerRound.new(round_id: @round.id, player_id: params[key][:id], score: params[key][:score]).save
                flash.now[:errors] = "you inputed an invalid score"
                render game_url(params[:id])
               end
            end
        end

        redirect_to game_url(params[:game_id])
    end
end
