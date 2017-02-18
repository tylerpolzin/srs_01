class StoresController < ApplicationController

    def index
      @stores = Store.all
    end
    
    def map
      @stores = Store.all
      @hash = Gmaps4rails.build_markers(@stores) do |store, marker|
        marker.lat store.lat
        marker.lng store.long
        marker.title store.name
        marker.infowindow "#{store.infowindow}"
        marker.picture({
           :url => "//chart.apis.google.com/chart?chst=d_map_pin_letter&chld=#{store.user.marker}",
           :width   => 52, :height  => 32
        })
      end
      respond_to do |format|
        format.html
        format.json { render json: @hash }
      end
    end
    
    def new
    end
    
    def show
      @stores = Store.find(params[:id])
      @callsheets = Callsheet.select(:visit_date, :id).where(:store_id => params[:id]).order(created_at: :desc).limit(12)
      @newcallsheet = NewCallsheet.new
      @tasks = Task.includes(:task_products, :storeorder).references(:storeorders).where('storeorders.store_id = ?', params[:id] ).order(created_at: :desc).limit(12)
    end
    
    def edit
      @stores = Store.find(params[:id])
    end
    
    def update
      @stores = Store.find(params[:id])
      respond_to do |format|
        if @stores.update(store_params)
          format.html { redirect_to @stores, notice: 'Store was successfully updated.' }
          format.json { respond_with_bip(@stores) }
        else
          format.html { render :edit }
          format.json { respond_with_bip(@stores) }
        end
      end
    end
    
  private
    def store_params
        params.require(:store).permit(:yard, :abbrv, :name, :prototype, :address, :city, :state, :zipcode, :lat, :long, :phone, :service_rep, :user_id, :notes, :lastvisit, :created_at, :updated_at)
    end
    def new_callsheet_params
      params.require(:new_callsheet).permit(:id, :store_id, :store_number, :store_abbrv, :store_name, :callsheet_date)
    end
end