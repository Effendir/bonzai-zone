require "test_helper"

class BonzaisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bonzais_index_url
    assert_response :success
  end

  test "should get show" do
    get bonzais_show_url
    assert_response :success
  end

  test "should get new" do
    get bonzais_new_url
    assert_response :success
  end

  test "should get create" do
    get bonzais_create_url
    assert_response :success
  end

  test "should get edit" do
    get bonzais_edit_url
    assert_response :success
  end

  test "should get update" do
    get bonzais_update_url
    assert_response :success
  end

  test "should get destroy" do
    get bonzais_destroy_url
    assert_response :success
  end
end
