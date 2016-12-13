class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    # Ensures all actions invoke this (except those just below)
  before_filter :authenticate_user!
end

class AuthenticationController < ApplicationController
  # Turn off user authentication for all actions in this controller
  skip_before_filter :authenticate_user!

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

end