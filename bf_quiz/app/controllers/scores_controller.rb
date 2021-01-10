class ScoresController < ApplicationController
  def new
    @score = Score.new
  end

  def create
    score  = Score.create score_params
    redirect_to score_path

  end

  def index
    @scores = Score.all
    # @scores = Score.where(user_id: @current_user)
  end

  def show
    @score = Score.find params[:id]
  end

  def edit
    @score = Score.find params[:id]
  end

  def update
    score = Score.find params[:id]
    score.update score_params
  end

  def destroy
  end

  private
  def score_params
    params.require(:score).permit(:time_completed, :user_id, :puzzle_id, :puzzle_count)
  end
end
