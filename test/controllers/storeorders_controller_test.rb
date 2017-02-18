require 'test_helper'

class StoreordersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @storeorder = storeorders(:one)
  end

  test "should get index" do
    get storeorders_url
    assert_response :success
  end

  test "should get new" do
    get new_storeorder_url
    assert_response :success
  end

  test "should create storeorder" do
    assert_difference('Storeorder.count') do
      post storeorders_url, params: { storeorder: {  } }
    end

    assert_redirected_to storeorder_url(Storeorder.last)
  end

  test "should show storeorder" do
    get storeorder_url(@storeorder)
    assert_response :success
  end

  test "should get edit" do
    get edit_storeorder_url(@storeorder)
    assert_response :success
  end

  test "should update storeorder" do
    patch storeorder_url(@storeorder), params: { storeorder: {  } }
    assert_redirected_to storeorder_url(@storeorder)
  end

  test "should destroy storeorder" do
    assert_difference('Storeorder.count', -1) do
      delete storeorder_url(@storeorder)
    end

    assert_redirected_to storeorders_url
  end
end
