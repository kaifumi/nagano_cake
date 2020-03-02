require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def setup
    @customer=customers(:syokaturyo)
  end
  
  test "unsuccessful edit" do
    sign_in(@customer)
    get edit_customer_customer_path(@customer.id)
    assert_template 'customers/edit'
    patch customer_customer_path(@customer), params: { customer: { first_name: "",
                          email: "foo@",
                          kana_first_name: "てすと手酢都",
                          telephone_number: "11111111111",
                          postal_code: "1111111",
                          address: "" } }
    assert_select "p.number_count","The form contains 7 errors."
    assert_template 'customers/edit'
  end



end
