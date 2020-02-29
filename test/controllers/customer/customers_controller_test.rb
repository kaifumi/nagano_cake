require 'test_helper'

class Customer::CustomersControllerTest < ActionDispatch::IntegrationTest
# class Customer::CustomersControllerTest < ActionController::TestCase
  include Devise::Test::IntegrationHelpers
  
  def setup
    @customer=customers(:syokaturyo)
    sign_in(@customer)
  end

  test "should get customer show" do
    get customer_customer_path(@customer)
    assert_response :success
    assert_select "title","NaganoCake"
  end

  test "should get customer edit" do
    get edit_customer_customer_path(@customer)
    assert_response :success
  end

end
