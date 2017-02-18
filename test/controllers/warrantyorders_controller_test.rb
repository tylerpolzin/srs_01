require 'test_helper'

class WarrantyordersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @warrantyorder = warrantyorders(:one)
  end

  test "should get index" do
    get warrantyorders_url
    assert_response :success
  end

  test "should get new" do
    get new_warrantyorder_url
    assert_response :success
  end

  test "should create warrantyorder" do
    assert_difference('Warrantyorder.count') do
      post warrantyorders_url, params: { warrantyorder: {  } }
    end

    assert_redirected_to warrantyorder_url(Warrantyorder.last)
  end

  test "should show warrantyorder" do
    get warrantyorder_url(@warrantyorder)
    assert_response :success
  end

  test "should get edit" do
    get edit_warrantyorder_url(@warrantyorder)
    assert_response :success
  end

  test "should update warrantyorder" do
    patch warrantyorder_url(@warrantyorder), params: { warrantyorder: {  } }
    assert_redirected_to warrantyorder_url(@warrantyorder)
  end

  test "should destroy warrantyorder" do
    assert_difference('Warrantyorder.count', -1) do
      delete warrantyorder_url(@warrantyorder)
    end

    assert_redirected_to warrantyorders_url
  end
end
