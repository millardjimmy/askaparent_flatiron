class ApplicationController < ActionController::Base
  
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  
    def user_signed_in?
      redirect_to login_url unless current_user
    end
  
    helper_method :current_user
  end