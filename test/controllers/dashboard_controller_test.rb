require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get line_view" do
    get :line_view
    assert_response :success
  end

end
