class UsersController < ApplicationController

    def show
        @users = User.all
    end
    
    def index
        @users = User.all
    end
    
    def edit
      @users = User.find(params[:id])
    end

    def update
      @users = User.find(params[:id])
      respond_to do |format|
        if @users.update(user_params)
          format.html { redirect_to @users, notice: 'User was successfully updated.' }
          format.json { respond_with_bip(@users) }
        else
          format.html { render :edit }
          format.json { respond_with_bip(@users) }
        end
      end
    end

    private
        
        def user_params
            params.require(:user).permit(:id, :email, :marker, :created_at, :updated_at)
        end

end