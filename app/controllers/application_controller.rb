class ApplicationController < ActionController::Base

    def current_user
        if logged_in?
            User.find(session[:user_id])
        else
            false
        end
    end

    def logged_in?
        session[:user_id]
    end

end
