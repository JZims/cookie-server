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
            Session.new({user: params[:name]})
            redirect_to users_path
        else 
            flash[:error] = "Invalid User"
            redirect_to users_path
        end
    end

    private

    def user_params
        params.permit(:name, :password)
    end

end
