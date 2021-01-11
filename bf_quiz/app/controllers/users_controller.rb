class UsersController < ApplicationController
    # CREATE
    def new
      @user = User.new
    end # new

    def create
      # Create user object
      @user = User.create user_params

      # Confirm data was saved to the database
      if @user.persisted?

        # Log user in once account created
        session[:user_id] = @user.id

        # Direct user to home
        redirect_to root_path

      else
      # Account creation failed
        # Re-render form
        render :new
      end # if
    end # create

    # READ
    def index
    end # index

    def show
      @games = Game.where(user_id: params[:id])
    end # show

    # UPDATE
    def edit
    end # edit

    def update
    end # update

    # DELETE
    def destroy
    end # destroy

    private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :username)
    end # user_params
  end # UsersController
