class GamesController < ApplicationController
  def index
    @games = Game.all
    # @game = Game.find(set_game)
  end

  def new
    @game = Game.new
  end

  # def create
  #   @game = Game.new(game_params)
  #   if @game.save
  #     redirect_to game_path(@game)
  #   else
  #     render 'new'
  #   end
  # end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.require(:game).permit(:user_id)
  end
end
