require 'test_helper'

class FavoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get favorites_show_url
    assert_response :success
  end

end
