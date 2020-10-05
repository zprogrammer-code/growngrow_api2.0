class UsersController < ApplicationController

    def index
        @user = User.all

        render json: @user
    end
    
    def create
        @user = User.create(
            username: params[:username],
            password: params[:password]
        )

        render json:  { user: @user }
    end

    def update
        @user = User.find_by(username: params[:username])
end
