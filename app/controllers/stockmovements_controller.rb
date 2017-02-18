class StockmovementsController < ApplicationController
  before_action :set_stockmovement, only: [:show, :edit, :update, :destroy]

  # GET /stockmovements
  # GET /stockmovements.json
  def index
    @stockmovements = Stockmovement.all
  end

  # GET /stockmovements/1
  # GET /stockmovements/1.json
  def show
  end

  # GET /stockmovements/new
  def new
    @stockmovement = Stockmovement.new
  end

  # GET /stockmovements/1/edit
  def edit
  end

  # POST /stockmovements
  # POST /stockmovements.json
  def create
    @stockmovement = Stockmovement.new(stockmovement_params)

    respond_to do |format|
      if @stockmovement.save
        format.html { redirect_to @stockmovement, notice: 'Stockmovement was successfully created.' }
        format.json { render :show, status: :created, location: @stockmovement }
      else
        format.html { render :new }
        format.json { render json: @stockmovement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stockmovements/1
  # PATCH/PUT /stockmovements/1.json
  def update
    respond_to do |format|
      if @stockmovement.update(stockmovement_params)
        format.html { redirect_to @stockmovement, notice: 'Stockmovement was successfully updated.' }
        format.json { render :show, status: :ok, location: @stockmovement }
      else
        format.html { render :edit }
        format.json { render json: @stockmovement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stockmovements/1
  # DELETE /stockmovements/1.json
  def destroy
    @stockmovement.destroy
    respond_to do |format|
      format.html { redirect_to stockmovements_url, notice: 'Stockmovement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stockmovement
      @stockmovement = Stockmovement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stockmovement_params
      params.fetch(:stockmovement, {})
    end
end
