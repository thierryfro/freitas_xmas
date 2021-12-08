require "test_helper"

class LeedsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get leeds_home_url
    assert_response :success
  end

  test "should get index" do
    get leeds_index_url
    assert_response :success
  end
end
