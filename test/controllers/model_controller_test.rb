require 'test_helper'

class ModelControllerTest < ActionDispatch::IntegrationTest
  test "should get issue_book" do
    get model_issue_book_url
    assert_response :success
  end

end
