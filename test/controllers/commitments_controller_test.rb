require 'test_helper'

class CommitmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get commitments_edit_url
    assert_response :success
  end

end
