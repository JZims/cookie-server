class SessionsController < ApplicationController

    def create
        byebug
            cookies[:user_name] = (params [:name])
            redirect_to user_path(@user)
        else 
            redirect_to new_session_path
        end
    end
end
