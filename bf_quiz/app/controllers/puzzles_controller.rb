class PuzzlesController < ApplicationController
  def new
    @puzzle = Puzzle.new
  end

  def create
    puzzle = Puzzle.create puzzle_params
    redirect_to puzzle_path

  end

  def index
    @puzzles = Puzzle.all
  end

  def show
    @puzzle = Puzzle.find params[:id]
    @puzzles = Puzzle.all
  
  end

  def edit
    @puzzle = Puzzle.find params[:id]
  end

  def update
    puzzle = Puzzle.find params[:id]
    puzzle.update puzzle_params
  end

  def destroy
  end

  private
  def puzzle_params
    params.require(:puzzle).permit(:question, :solution, :clue, :incorrect_a, :incorrect_a, :incorrect_c, :puzzle_type)
  end
end
