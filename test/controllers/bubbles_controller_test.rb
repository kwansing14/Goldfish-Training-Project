require 'test_helper'

class BubblesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bubbles_index_url
    assert_response :success
  end

  test "should get show" do
    get bubbles_show_url
    assert_response :success
  end

  test "should get edit" do
    get bubbles_edit_url
    assert_response :success
  end

  test "should get new" do
    get bubbles_new_url
    assert_response :success
  end

end
