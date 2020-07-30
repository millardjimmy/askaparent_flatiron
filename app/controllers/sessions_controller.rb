class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        if  session[:user_id] = user.id 
            redirect_to questions_path
        else
            redirect_to '/login'
        end
    end

    def destroy
        session.destroy
        redirect_to questions_path
    end

end
