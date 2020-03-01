require 'test_helper'

class Customer::CustomersControllerTest < ActionDispatch::IntegrationTest
# class Customer::CustomersControllerTest < ActionController::TestCase
  include Devise::Test::IntegrationHelpers
  
  def setup
    @customer=customers(:syokaturyo)
    @other_customer=customers(:kyoui)
    @admin=admins(:sibai)
  end

  #before_actionのテスト
  test "should redirect show when not logged in" do
    get customer_customer_path(@customer)
    assert_redirected_to new_customer_session_path
  end

  # 必要ないかも
  # test "should not allow the admin attribute to be edited via the web" do
  #   sign_in(@customer)
  #   assert_not @customer==@admin
  #   patch admin_customer_path(@customer),params: {customer: { email:@admin.email,password:@admin.password,
  #                         password_confirmation:@admin.password} }
  #   assert_redirected_to root_url
  # end

  #showに飛べるかテスト
  test "should get customer show" do
    sign_in(@customer)
    get customer_customer_path(@customer)
    assert_response :success
    assert_select "title","NaganoCake"
  end

  #別アカのeditにとべないことの確認テスト
  test "should redirect edit when logged in as wrong user" do
    sign_in(@other_customer)
    get edit_customer_customer_path(@customer)
    assert flash.empty?
    assert_redirected_to root_path
  end

  #別アカでupdateできないことのテスト
  test "should redirect update when logged in as wrong user" do
    sign_in(@other_customer)
    patch customer_customer_path(@customer),params:{customer:{ first_name:@customer.first_name,
                                                              email:@customer.email}}
    assert flash.empty?
    assert_redirected_to root_path
  end

  #未ログイン状態でdestroyできないことのテスト
  test "should redirect destroy when not logged in" do
    assert_no_difference "Customer.count" do
      delete customer_customer_path(@customer)
    end
    assert_redirected_to new_customer_session_path
  end

  # customer自身が退会できるようにするため不要
  # test "should redirect destroy when logged in as a non-admin" do
  #   sign_in(@other_customer)
  #   assert_no_difference "Customer.count" do
  #     delete customer_customer_path(@customer)
  #   end
  #   assert_redirected_to root_url
  # end
end
