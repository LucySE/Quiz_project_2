require "test_helper"

class PuzzlesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get puzzles_new_url
    assert_response :success
  end

  test "should get create" do
    get puzzles_create_url
    assert_response :success
  end

  test "should get index" do
    get puzzles_index_url
    assert_response :success
  end

  test "should get show" do
    get puzzles_show_url
    assert_response :success
  end

  test "should get edit" do
    get puzzles_edit_url
    assert_response :success
  end

  test "should get update" do
    get puzzles_update_url
    assert_response :success
  end

  test "should get destroy" do
    get puzzles_destroy_url
    assert_response :success
  end
end
