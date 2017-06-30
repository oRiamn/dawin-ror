require 'test_helper'

class Blog::PostControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blog_post_index_url
    assert_response :success
  end

end
