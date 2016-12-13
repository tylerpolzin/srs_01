class CallsheetsController < ApplicationController
  
  def new
    # @callsheets = Callsheet.new
    @stores = Store.all
    @repstores = Store.select(:yard, :name).where(:user_id=> current_user.id)
  end
  
  def created
  
  end
  
  def edit
  
  end
  
  def update
  
  end
    
end