require 'test_helper'

class ToysUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get toys_users_new_url
    assert_response :success
  end

  test "should get create" do
    get toys_users_create_url
    assert_response :success
  end

  test "should get update" do
    get toys_users_update_url
    assert_response :success
  end

end
