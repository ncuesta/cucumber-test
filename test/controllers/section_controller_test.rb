require 'test_helper'

class SectionControllerTest < ActionController::TestCase
  test "should get cover" do
    get :cover
    assert_response :success
  end

end
