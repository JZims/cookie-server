class SessionsController < ApplicationController

    def create
        @user = User
                .find_by(name: params["name"])
                .try(:authenticate, params[:password])
        if @user 
            cookies[:user_id] = @user.name
            render json: {
                status: :created, 
                logged_in: true, 
                user: @user
            }
        else 
            render json: { status: 401 }
        end
    end


end
