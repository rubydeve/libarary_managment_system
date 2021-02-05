require 'test_helper'

class IssueControllerTest < ActionDispatch::IntegrationTest
  test "should get books" do
    get issue_books_url
    assert_response :success
  end

end
