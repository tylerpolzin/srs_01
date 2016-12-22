class CallsheetsController < ApplicationController
  
  def new
    @stores = Store.all
    @repstores = Store.select(:id, :yard, :name).where(:user_id=> current_user.id)
    @callsheet = Callsheet.new
    @callsheet.user_id = current_user.id
  end
  
  def create
    @callsheet = Callsheet.new(callsheet_params)
    if @callsheet.save
      flash[:success] = "Callsheet Uploaded!"
      redirect_to root_path
    else
      render action: :new
    end
  end
  
  def edit
  
  end
  
  def update
  
  end
  
  def index
    @callsheet = Callsheet.all
  end
  
  private
  
    def store_params
      params.permit(:store).permit(:id, :yard, :abbrv, :name, :prototype, :address, :city, :state, :zipcode, :lat, :long, :phone, :service_rep, :user_id, :notes, :lastvisit, :created_at, :updated_at)
    end
    
    def callsheet_params
      params.require(:callsheet).permit(:id, :user_id, :store_id, :dept_manager_400, :ce_stairdisplays, :ce_binboxes, :ce_tvdisplay, :ce_closetdoors, :ce_barndoors, :ce_lit_tearpads, :ce_lit_closetdoors, 
                                            :ce_lit_columns, :ce_notes, :genie_sku_4251691, :genie_sku_4251689, :genie_sku_4252547, :genie_sku_4252548, :genie_sku_4254040, :genie_sku_4251720, :genie_sku_4252388, 
                                            :genie_sku_4252445, :genie_sku_4252391, :genie_sku_4251685, :genie_notes, :dept_manager_600, :hw_sku_3351566, :hw_sku_3351579, :hw_sku_6360310, :hw_sku_6360320, :hw_sku_6360325, :hw_sku_6360328, :hw_sku_3351813, 
                                            :hw_sku_3351830, :hw_sku_3351832, :hw_sku_3351833, :hw_sku_6360205, :hw_sku_6360210, :hw_sku_6360220, :hw_sku_6360150, :hw_sku_6360200, :hw_sku_3351837, :hw_sku_3351779, 
                                            :hw_sku_3351885, :hw_sku_3351785, :hw_sku_3351798, :hw_sku_3351879, :hw_sku_3351895, :hw_sku_3352001, :hw_sku_3352014, :hw_sku_3352027, :hw_sku_3352030, :hw_sku_6399948, 
                                            :hw_sku_6399949, :hw_sku_6399978, :hw_sku_6399979, :hw_lit_thermostat, :hw_lit_airquality, :honeywell_notes, :summit_sku_6471315, :summit_sku_6471317, :summit_sku_6471323, :summit_sku_6471320, :summit_sku_6471321, :summit_sku_6471330, 
                                            :summit_sku_6471333, :summit_sku_6471305, :summit_sku_6471322, :summit_sku_6471302, :summit_sku_6473100, :summit_sku_6471335, :summit_sku_6471325, :summit_sku_6473918, 
                                            :summit_sku_6473917, :summit_sku_6473900, :summit_sku_6473136, :summit_notes, :allstone_lit, :allstone_notes, :tuscany_notes)
    end
    
end