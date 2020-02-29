require 'test_helper'

class Customer::CustomersControllerTest < ActionDispatch::IntegrationTest
# class Customer::CustomersControllerTest < ActionController::TestCase
  include Devise::Test::IntegrationHelpers
  
  def setup
    @customer=customers(:syokaturyo)
  end

  test "should redirect index when not logged in" do
    get customer_customer_path(@customer)
    assert_redirected_to new_customer_session_path
  end

  test "should get customer show" do
    sign_in(@customer)
    get customer_customer_path(@customer)
    assert_response :success
    assert_select "title","NaganoCake"
  end

  test "should get customer edit" do
    sign_in(@customer)
    get edit_customer_customer_path(@customer)
    assert_response :success
  end

end
