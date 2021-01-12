class GamesController < ApplicationController

  before_action :check_if_logged_in, only: [:create]

  def new
    @game = Game.new
  end

  def create
    # User has requested a new game. Create a new game object and connect it to that user.
    # The newly created game is automatically the "in progress" game, and we also
    # initialise the score to zero.

    game  = Game.create user_id:@current_user.id, in_progress:true, score:0
    # p game
    # p game.errors
    # Make a request to the trivia API and retrieve 10 questions.
    # Save the questions from API as Puzzle items and associate them with the game.
    # Currently we are only utilising multiple choice by specifying that using the "type" param.
    trivia_api_url = "https://opentdb.com/api.php?amount=10&category=18&difficulty=easy&type=multiple"
    response = HTTParty.get trivia_api_url

    response["results"].each do |question_hash|
      # puts question_hash["question"]
      # puts question_hash["difficulty"]
      Puzzle.create(
        question: question_hash["question"],
        solution: question_hash["correct_answer"],
        incorrect_a: question_hash["incorrect_answers"][0],
        incorrect_b: question_hash["incorrect_answers"][1],
        incorrect_c: question_hash["incorrect_answers"][2],
        game_id: game.id
      )
    end
    # require "pry": binding.pry

    redirect_to game_path(game.id)

  end

  def index
    games = Game.all
    sortedgames = games.sort_by { |game| [game.score, game.updated_at] }.reverse
    @games = sortedgames.uniq(&:user_id)

  end

  def show
    @game = Game.find params[:id]
    @puzzle = Puzzle.where(game_id: params[:id])
  end

  def gameover
      @game = Game.find params[:id]
      @puzzle = Puzzle.where(game_id: params[:id])
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
