class ProfilesController < ApplicationController
    
    def new
        @profile = Profile.new
    end
    
    def create
        @user = User.find( params[:user_id] )
        @profile = @user.build_profile ( profile_params )
        if @profile.save
            flash[:success] = "Profile Updated!"
            redirect_to edit_user_profile_path(id: params[:user_id] )
        else
            render action: :new
        end
        
    end
    
    def edit
        @user = User.find( params[:user_id] )
        @profile = @user.profile
    end
    
    def update
        @user = User.find( params[:user_id] )
        @profile = @user.profile
        if @profile.update_attributes(profile_params)
            flash[:success] = "Profile updated!"
            redirect_to edit_user_profile_path(id: params[:user_id])
        else
            render action: :edit
        end
    end
    
    def show
        @user = User.find( params[:id] )
    end
    
    def index
        @profile = Profile.all
    end
    
    private
        def profile_params
            params.require(:profile).permit(:user_id, :name, :position, :address, :city, :state, :zipcode, :phone1, :phone1_type, :phone2, :phone2_type, :email, :notes)
        end
        
        def only_current_user
            @user = User.find( params[:user_id] )
            redirect_to(root_url) unless @user == current_user
        end
    
end
