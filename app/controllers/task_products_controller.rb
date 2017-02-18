class TaskProductsController < ApplicationController
  before_action :set_task_product, only: [:show, :edit, :update, :destroy]

  # GET /task_products
  # GET /task_products.json
  def index
    @task_products = TaskProduct.all
  end

  # GET /task_products/1
  # GET /task_products/1.json
  def show
  end

  # GET /task_products/new
  def new
    @task_product = TaskProduct.new
  end

  # GET /task_products/1/edit
  def edit
  end

  # POST /task_products
  # POST /task_products.json
  def create
    @task_product = TaskProduct.new(task_product_params)

    respond_to do |format|
      if @task_product.save
        format.html { redirect_to @task_product, notice: 'Task product was successfully created.' }
        format.json { render :show, status: :created, location: @task_product }
      else
        format.html { render :new }
        format.json { render json: @task_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /task_products/1
  # PATCH/PUT /task_products/1.json
  def update
    respond_to do |format|
      if @task_product.update(task_product_params)
        format.html { redirect_to @task_product, notice: 'Task product was successfully updated.' }
        format.json { render :show, status: :ok, location: @task_product }
      else
        format.html { render :edit }
        format.json { render json: @task_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_products/1
  # DELETE /task_products/1.json
  def destroy
    @task_product.destroy
    respond_to do |format|
      format.html { redirect_to task_products_url, notice: 'Task product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task_product
      @task_product = TaskProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_product_params
      params.require(:task_product).permit(:id, :task_id, :product_id, :created_at, :updated_at, :_destroy)
    end
end
