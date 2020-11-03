require 'test_helper'

class QuestionnaireControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get questionnaire_update_url
    assert_response :success
  end

end
