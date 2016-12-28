class NewCallsheetsController < ApplicationController
  
  def create
    @newcallsheet = NewCallsheet.new(new_callsheet_params)
    if @newcallsheet.save
      redirect_to new_callsheet_path
    else
      render action :new
    end
  end
  
  private
  
    def new_callsheet_params
      params.require(:new_callsheet).permit(:id, :store_id, :store_number, :store_abbrv, :store_name, :callsheet_date)
    end
  
end