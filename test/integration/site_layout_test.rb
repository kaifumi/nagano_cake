require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    @customer=customers(:syokaturyo)
  end
  
  test "layout links when not logged in" do
    sign_in(@customer)
    get root_path
    assert_template "/"
    assert_select "a[href=?]",root_path
    assert_select "a[href=?]",customer_customer_path(@customer.id)
    assert_select "a[href=?]",customer_cart_products_path
    assert_select "a[href=?]",destroy_customer_session_path
  end
end
