class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    game  = Game.create game_params
    redirect_to game_path

  end

  def index
    @games = Game.all
  end

  def show
    @game = Game.find params[:id]
  end

  def edit
    @game = Game.find params[:id]
  end

  def update
    game = Game.find params[:id]
    game.update game_params
  end

  def destroy
  end

  private
  def game_params
    params.require(:game).permit(:status, :user_id, :puzzle_id)
  end
end
