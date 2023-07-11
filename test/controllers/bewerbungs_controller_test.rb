require "test_helper"

class BewerbungsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bewerbungs_index_url
    assert_response :success
  end

  test "should get show" do
    get bewerbungs_show_url
    assert_response :success
  end

  test "should get new" do
    get bewerbungs_new_url
    assert_response :success
  end

  test "should get edit" do
    get bewerbungs_edit_url
    assert_response :success
  end

  test "should get update" do
    get bewerbungs_update_url
    assert_response :success
  end
end
