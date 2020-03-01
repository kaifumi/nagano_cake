require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links when not logged in" do
    get root_path
  end
end
