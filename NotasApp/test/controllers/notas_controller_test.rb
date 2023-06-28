require "test_helper"

class NotasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get notas_index_url
    assert_response :success
  end

  test "should get show" do
    get notas_show_url
    assert_response :success
  end

  test "should get new" do
    get notas_new_url
    assert_response :success
  end

  test "should get create" do
    get notas_create_url
    assert_response :success
  end

  test "should get edit" do
    get notas_edit_url
    assert_response :success
  end

  test "should get update" do
    get notas_update_url
    assert_response :success
  end
end
