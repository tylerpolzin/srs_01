class ItemsController < ApplicationController
    
   def index
      @items = Item.all
   end
   
   def show
      @item = Item.find(params[:id])
   end
   
   def new
      @item = Item.new
   end
   
   def create
      @item = Item.new(item_params)
      if @item.save
         redirect_to items_path
      else
         render action: :new
      end
   end
   
   def edit
      @item = Item.find(params[:id])
   end

   def update
      @item = Item.find(params[:id])
   end
   
   def destroy
      @item = Item.destroy(params[:id])
      if @item.destroy
         redirect_to items_path
      else
         render action: :new
      end
   end
   
   private
      
      def item_params
         params.require(:item).permit(:vendor_name, :model_number, :part_number, :upc, :description, :picture, :weight, :location, :count_on_hand, :active, :created_at, :updated_at)
      end
   
end