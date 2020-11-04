require 'test_helper'

class FootprintsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get footprints_show_url
    assert_response :success
  end

end
