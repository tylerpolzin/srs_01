class StoresController < ApplicationController
    
    def index
        @stores = Store.all
    end
    
    def new
    end
    
    private
        # don't know what this does yet, "Use callbacks to share common setup or constraints between actions"
        def set_store
        @store = Store.find(params[:id])
        end
        
        
        def store_params
            params.require(:store).permit(:yard, :abbrv, :name, :prototype, :address, :city, :state, :zipcode, :lat, :long, :phone, :service_rep, :user_id, :notes, :lastvisit, :created_at, :updated_at)
        end

end