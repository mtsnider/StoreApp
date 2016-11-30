require 'test_helper'

class ProductOnOrderControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get product_on_order_create_url
    assert_response :success
  end

  test "should get update" do
    get product_on_order_update_url
    assert_response :success
  end

  test "should get destroy" do
    get product_on_order_destroy_url
    assert_response :success
  end

end
