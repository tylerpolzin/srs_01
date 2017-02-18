class WarrantyordersController < ApplicationController
  before_action :set_warrantyorder, only: [:show, :edit, :update, :destroy]

  # GET /warrantyorders
  # GET /warrantyorders.json
  def index
    @warrantyorders = Warrantyorder.all
  end

  # GET /warrantyorders/1
  # GET /warrantyorders/1.json
  def show
  end

  # GET /warrantyorders/new
  def new
    @warrantyorder = Warrantyorder.new
  end

  # GET /warrantyorders/1/edit
  def edit
  end

  # POST /warrantyorders
  # POST /warrantyorders.json
  def create
    @warrantyorder = Warrantyorder.new(warrantyorder_params)

    respond_to do |format|
      if @warrantyorder.save
        format.html { redirect_to @warrantyorder, notice: 'Warrantyorder was successfully created.' }
        format.json { render :show, status: :created, location: @warrantyorder }
      else
        format.html { render :new }
        format.json { render json: @warrantyorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /warrantyorders/1
  # PATCH/PUT /warrantyorders/1.json
  def update
    respond_to do |format|
      if @warrantyorder.update(warrantyorder_params)
        format.html { redirect_to @warrantyorder, notice: 'Warrantyorder was successfully updated.' }
        format.json { render :show, status: :ok, location: @warrantyorder }
      else
        format.html { render :edit }
        format.json { render json: @warrantyorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /warrantyorders/1
  # DELETE /warrantyorders/1.json
  def destroy
    @warrantyorder.destroy
    respond_to do |format|
      format.html { redirect_to warrantyorders_url, notice: 'Warrantyorder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_warrantyorder
      @warrantyorder = Warrantyorder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def warrantyorder_params
      params.fetch(:warrantyorder, {})
    end
end
