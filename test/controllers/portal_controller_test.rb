require 'test_helper'

class PortalControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get portal_index_url
    assert_response :success
  end

end
