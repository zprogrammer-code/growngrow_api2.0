class UsersController < ApplicationController
    
    def create
        @user = User.create(
            username: params[:username],
            password: params[:password]
            )
            
            render json:  { user: @user }
        end
        
            # def index
            #     @user = User.all
        
            #     render json:  @user 
            # end

end
