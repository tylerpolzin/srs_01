class StoresController < ApplicationController
    
    def index
        @stores = Store.all
    end
    
    def new
    end
    
    def show
        @stores = Store.find(params[:id])
        @callsheets = Callsheet.select(:visit_date, :id).where(:store_id => params[:id])
        @newcallsheet = NewCallsheet.new
    end
    
    def edit
        @stores = Store.find(params[:id])
    end
    
    def update
        @stores = Store.find(params[:id])
        if @stores.update_attributes(store_params)
            redirect_to stores_path
        else
            render action: :edit
        end
    end
    
    private
        # don't know what this does yet, "Use callbacks to share common setup or constraints between actions"
       # def set_store
       # @stores = Store.find(params[:id])
     #   end
        
        
        def store_params
            params.require(:store).permit(:yard, :abbrv, :name, :prototype, :address, :city, :state, :zipcode, :lat, :long, :phone, :service_rep, :user_id, :notes, :lastvisit, :created_at, :updated_at)
        end
        
        def new_callsheet_params
          params.require(:new_callsheet).permit(:id, :store_id, :store_number, :store_abbrv, :store_name, :callsheet_date)
        end
end