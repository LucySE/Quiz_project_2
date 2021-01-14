class PagesController < ApplicationController

before_action :fetch_user

  def home
  end

 def gameover
   @game = Game.where(user_id: @current_user.id)
 end

end
