require 'test_helper'

class EmailcontrollerControllerTest < ActionController::TestCase
  test "should get contact" do
    get :contact
    assert_response :success
  end

end
