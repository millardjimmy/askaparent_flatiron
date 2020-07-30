class ParentController < ApplicationController

    def create
        @user = User.create
        redirect_to questions_path
    end

    def new
        @user = User.new
    end


end
