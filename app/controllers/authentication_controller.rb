class AuthenticationController < ApplicationController
    def login
        @user = User.find_by username: params[:username]

        if !@user
            render json: { error: "No user with that username"}, status: :unauthorized
        else
            if !@user.authenticate params[:password]
                render json: { error: "Bad password bra"}, status: :unauthorized
            else
                payload = {
                    user_id: @user.id
                }
                secret = "Literally Anything"
                token = JWT.encode payload, secret
                render json: { token: token}
                render json: { message: "Yer logged in bud!"}, status: :created
            end
        end     
    end

end
