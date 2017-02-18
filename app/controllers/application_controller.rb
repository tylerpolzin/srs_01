class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    # Ensures all actions invoke this (except those just below)
  before_action :authenticate_user!
end

class AuthenticationController < ApplicationController

  def login
    '...'
  end
  
  def application
    @users = User.all
  end
  

  
  private  
    def user_params
      params.require(:user).permit(:id, :usertype, :email)
    end
    def role_params
      params.require(:role).permit(:id, :name, :resource_type, :resource_id, :created_at, :updated_at)
    end
end