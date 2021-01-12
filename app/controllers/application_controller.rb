class ApplicationController < ActionController::Base

    # Call fetch_user before every action in every controller
    before_action :fetch_user

    def fetch_user
        # Check user_id in session hash is valid, active user
        if session[:user_id].present?
            # Set current user
            @current_user = User.find_by id: session[:user_id]
        end # if

        # If invalid delete the session
        session[:user_id] = nil unless @current_user.present?
    end # fetch_user

    def check_if_logged_in
        # Reject the user if they are not the current logged in user
        unless @current_user.present?
          flash[:error] = 'You must be logged in to perform that action.'
          redirect_to login_path
        end # unless
    end # check_if_logged_in

end # ApplicationController
