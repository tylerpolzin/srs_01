class UsersController < ApplicationController

    def show
        @users = User.all
    end
    
    def index
        @users = User.all
    end

    private
        
        def user_params
            params.require(:user).permit(:id, :email, :created_at, :updated_at)
        end

end