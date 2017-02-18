require 'test_helper'

class TaskProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task_product = task_products(:one)
  end

  test "should get index" do
    get task_products_url
    assert_response :success
  end

  test "should get new" do
    get new_task_product_url
    assert_response :success
  end

  test "should create task_product" do
    assert_difference('TaskProduct.count') do
      post task_products_url, params: { task_product: {  } }
    end

    assert_redirected_to task_product_url(TaskProduct.last)
  end

  test "should show task_product" do
    get task_product_url(@task_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_product_url(@task_product)
    assert_response :success
  end

  test "should update task_product" do
    patch task_product_url(@task_product), params: { task_product: {  } }
    assert_redirected_to task_product_url(@task_product)
  end

  test "should destroy task_product" do
    assert_difference('TaskProduct.count', -1) do
      delete task_product_url(@task_product)
    end

    assert_redirected_to task_products_url
  end
end
