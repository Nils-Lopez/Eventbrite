require 'test_helper'

class EventControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get event_controller_index_url
    assert_response :success
  end

end
