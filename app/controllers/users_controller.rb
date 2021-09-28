class UsersController < ApplicationController


    def index
    end

    def new
        @user = User.new
    end

    def create
        byebug
        @user = User.new   
    end

    def login
        @user = User.find_by(name: user_params[:name])

        if @user 
            Session.create({user: @user[:name]})
        else 
            flash[:error] = "Invalid User"
        end
    end

    private

    def user_params
        params.permit(:name, :password_digest)
    end

end
