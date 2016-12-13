class ItemsController < ApplicationController
    
   def index
      @items = Item.all
   end
   
   def new
   
   end
   
   def edit
      @item = Item.new(params[:item])
   end

   def update
      @item = Item.find(params[:id])
   end
   
   private
      
      def item_params
         params.require(:item).permit(:vendor_name, :model_number, :part_number, :upc, :description, :picture, :weight, :location, :count_on_hand, :active, :created_at, :updated_at)
      end
   
end