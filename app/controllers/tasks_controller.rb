class TasksController < ApplicationController

def index
  respond_to do |format|
    format.html
    format.json {render json: TaskDatatable.new(view_context)}
  end
end

def dashboard
  @tasks = Task.includes(:task_products, :storeorder, :warrantyorder)
end

def show
  @task = Task.find(params[:id])
  @initiated_by = Profile.select(:name).where(:user_id => @task.initiated_by)
  @initiated_for = Profile.select(:name).where(:user_id => @task.initiated_for)
  @taskproduct = TaskProduct.select(:product_id).where(:task_id => @task.id)
  @item = Item.where(:id => @taskproduct)
  @storeordered = Storeorder.where(:task_id => @task.id)
  @storeorderid = Storeorder.select(:store_id).where(:task_id => @task.id)
  @store = Store.where(:id => @storeorderid)
  @warrantyorderid = Warrantyorder.select(:customer_id).where(:task_id => @task.id)
  @customer = Customer.where(:id => @warrantyorderid)
  @warrantyorder = Warrantyorder.where(:task_id => @task.id)
end

def new
  @task = Task.new
  @task.build_storeorder
  warrantyorder = @task.build_warrantyorder
  warrantyorder.build_customer
  @task.task_products.build
  @task.uploads.build
  @product = TaskProduct.new
  @storeorder = Storeorder.new
  @warrantyorder = Warrantyorder.new
  @customer = Customer.new
  @upload = Upload.new
  @stores = Store.all
  @profiles = Profile.select(:id, :name)
  @product_so = Item.where(:store_orderable => true)
  @product_co = Item.all
  @items = Item.select(:id, :vendor_name, :description)
  @customerselect = Customer.select(:id, :firstname, :lastname, :city, :state)
end

def create
  @stores = Store.all
  @profiles = Profile.select(:id, :name)
  @itemsso = Item.select(:id, :vendor_name, :description).where(:store_orderable => true)
  @items = Item.select(:id, :vendor_name, :description)
  @customerselect = Customer.select(:id, :firstname, :lastname, :city, :state)
  @task = Task.new(task_params)

  respond_to do |format|
    if @task.save
      
      format.html { redirect_to @task, notice: 'Task was successfully created.' }
      format.json { render :show, status: :created, location: @task }
    else
      format.html { render :new }
      format.json { render json: @task.errors, status: :unprocessable_entity }
    end
  end
end

def edit
  @task = Task.find(params[:id])
  @stores = Store.all
  @storeorder = Storeorder.select(:id, :store_id, :task_id, :po_number, :activity, :shipping_carrier, :tracking_number, :shipping_cost).where(:task_id => @task.id)
  @profiles = Profile.select(:id, :name)
  @items = Item.select(:id, :vendor_name, :description).where(:store_orderable => true)
end

def update
  @task = Task.find(params[:id])
  respond_to do |format|
    if @task.update(task_params)
      format.html { redirect_to @task, notice: 'Task was successfully updated.' }
      format.json { respond_with_bip(@task) }
    else
      format.html { render :edit }
      format.json { respond_with_bip(@task) }
    end
  end
end

def destroy
  @task.destroy
  respond_to do |format|
    format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
    format.json { head :no_content }
  end
end

private
  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit!
  end
  
  def storeorder_params
    params.require(:storeorder).permit!
  end
  
  def warrantyorder_params
    params.require(:warrantyorder).permit(:id, :customer_id, :task_id, :po_number, :activity, :shipping_carrier, :tracking_number, :shipping_cost, :created_at, :updated_at)
  end
  
  def store_params
      params.require(:store).permit(:id, :yard, :abbrv, :name, :prototype, :address, :city, :state, :zipcode, :lat, :long, :phone, :service_rep, :user_id, :notes, :lastvisit, :created_at, :updated_at)
  end
  
  def task_products_params
    params.require(:task_products).permit(:id, :task_id, :product_id, :created_at, :updated_at)
  end
  
  def item_params
     params.require(:item).permit(:id, :vendor_name, :model_number, :part_number, :upc, :description, :avatar, :remove_avatar, :weight, :location, :count_on_hand, :active, :created_at, :updated_at)
  end
end
