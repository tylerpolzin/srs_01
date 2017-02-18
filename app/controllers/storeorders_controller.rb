class StoreordersController < ApplicationController
  before_action :set_storeorder, only: [:show, :edit, :update, :destroy]

  # GET /storeorders
  # GET /storeorders.json
  def index
    @storeorders = Storeorder.all
  end

  # GET /storeorders/1
  # GET /storeorders/1.json
  def show
    @storeorder = Storeorder.find(params[:id])
  end

  # GET /storeorders/new
  def new
    @storeorder = Storeorder.new
  end

  # GET /storeorders/1/edit
  def edit
    @storeorder = Storeorder.find(params[:id])
  end

  # POST /storeorders
  # POST /storeorders.json
  def create
    @storeorder = Storeorder.new(storeorder_params)

    respond_to do |format|
      if @storeorder.save
        format.html { redirect_to @storeorder, notice: 'Storeorder was successfully created.' }
        format.json { render :show, status: :created, location: @storeorder }
      else
        format.html { render :new }
        format.json { render json: @storeorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /storeorders/1
  # PATCH/PUT /storeorders/1.json
  def update
    @task = Task.find(params[:id])
    @storeorder = Storeorder.where(:task_id => @task)
    respond_to do |format|
      if @storeorder.update(storeorder_params)
        format.html { redirect_to @storeorder, notice: 'Storeorder was successfully updated.' }
        format.json { respond_with_bip(@storeorder) }
      else
        format.html { render :edit }
        format.json { respond_with_bip(@storeorder) }
      end
    end
  end

  # DELETE /storeorders/1
  # DELETE /storeorders/1.json
  def destroy
    @storeorder = Storeorder.find(params[:id])
    @storeorder.destroy
    respond_to do |format|
      format.html { redirect_to storeorders_url, notice: 'Storeorder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end
    def set_storeorder
      @storeorder = Storeorder.where(:task_id => @task)
    end

    def task_params
      params.require(:task).permit!
    end
    def storeorder_params
      params.require(:storeorder).permit!
    end
    
    def store_params
      params.require(:store).permit(:id, :yard, :abbrv, :name, :prototype, :address, :city, :state, :zipcode, :lat, :long, :phone, :service_rep, :user_id, :notes, :lastvisit, :created_at, :updated_at)
    end
    
    def item_params
       params.require(:item).permit(:vendor_name, :model_number, :part_number, :upc, :description, :picture, :avatar, :remove_avatar, :weight, :location, :count_on_hand, :active, :created_at, :updated_at)
    end
end
