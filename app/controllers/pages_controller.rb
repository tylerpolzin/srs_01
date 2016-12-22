class PagesController < ApplicationController
    
    def home
        @users = User.all
    end
    
    def about
    end
    
    def orders
    end
    
    def map
        @stores = Store.all
    end
    
    private
    
    def store_params
        params.require(:store).permit(:id, :yard, :abbrv, :name, :prototype, :address, :city, :state, :zipcode, :lat, :long, :phone, :service_rep, :user_id, :notes, :lastvisit, :created_at, :updated_at)
    end
    
    def user_params
        params.require(:user).permit(:id, :usertype, :email, :admin)
    end

end