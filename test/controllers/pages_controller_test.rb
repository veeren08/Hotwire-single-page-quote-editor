require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get controller" do
    get pages_controller_url
    assert_response :success
  end
end
