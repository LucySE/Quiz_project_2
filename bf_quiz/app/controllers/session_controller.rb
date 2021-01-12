class SessionController < ApplicationController
    def new
    end # new

    def create
      # Check email address exists in DB
      user = User.find_by email: params[:email]

      # Check email address is not nil and ensure authenticity of user
      if user.present? && user.authenticate(params[:password])
        # Create session cookie for current user
        session[:user_id] = user.id

        # Load page
        redirect_to new_game_path
      else
        # Create message to inform user login failed
        flash[:error] = 'Invalid email or password'

        # Show login form
        redirect_to login_path
      end # if
    end # create

    def destroy
      # Log user out
      session[:user_id] = nil
      redirect_to login_path
    end # destroy
end # SessionController
