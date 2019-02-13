require 'test_helper'

class ToysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get toys_index_url
    assert_response :success
  end

  test "should get new" do
    get toys_new_url
    assert_response :success
  end

  test "should get create" do
    get toys_create_url
    assert_response :success
  end

  test "should get show" do
    get toys_show_url
    assert_response :success
  end

  test "should get edit" do
    get toys_edit_url
    assert_response :success
  end

  test "should get update" do
    get toys_update_url
    assert_response :success
  end

  test "should get delete" do
    get toys_delete_url
    assert_response :success
  end

end
