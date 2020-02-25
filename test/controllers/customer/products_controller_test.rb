require 'test_helper'

class Customer::ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get customer_products_index_url
    assert_response :success
  end

  test "should get show" do
    get customer_products_show_url
    assert_response :success
  end

end
