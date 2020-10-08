class UsersController < ApplicationController
    before_action :set_todo, only: [:show, :update, :destroy]

    # GET /todos
    def index
      @users = Todo.all
      json_response(@users)
    end
  
    # POST /todos
    def create
      @user = User.create!(user_params)
      json_response(@user, :created)
    end
  
    # GET /todos/:id
    def show
      json_response(@user)
    end
  
    # PUT /todos/:id
    def update
      @user.update(user_params)
      head :no_content
    end
  
    # DELETE /todos/:id
    def destroy
      @user.destroy
      head :no_content
    end
  
    private
  
    def user_params
      # whitelist params
      params.permit(:username, :password)
    end
  
    def set_todo
      @user = User.find(params[:id])
    end
  end
    # def create
    #     @user = User.create(
    #         username: params[:username],
    #         password: params[:password]
    #         )
            
    #         render json:  { user: @user }
    #     end
        
           


