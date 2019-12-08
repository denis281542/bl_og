require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get p1" do
    get pages_p1_url
    assert_response :success
  end

  test "should get p2" do
    get pages_p2_url
    assert_response :success
  end

  test "should get p3" do
    get pages_p3_url
    assert_response :success
  end

end
