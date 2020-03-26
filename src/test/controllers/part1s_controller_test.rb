require 'test_helper'

class Part1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @part1 = part1s(:one)
  end

  test "should get index" do
    get part1s_url
    assert_response :success
  end

  test "should get new" do
    get new_part1_url
    assert_response :success
  end

  test "should create part1" do
    assert_difference('Part1.count') do
      post part1s_url, params: { part1: { ans1: @part1.ans1, ans10: @part1.ans10, ans2: @part1.ans2, ans3: @part1.ans3, ans4: @part1.ans4, ans5: @part1.ans5, ans6: @part1.ans6, ans7: @part1.ans7, ans8: @part1.ans8, ans9: @part1.ans9 } }
    end

    assert_redirected_to part1_url(Part1.last)
  end

  test "should show part1" do
    get part1_url(@part1)
    assert_response :success
  end

  test "should get edit" do
    get edit_part1_url(@part1)
    assert_response :success
  end

  test "should update part1" do
    patch part1_url(@part1), params: { part1: { ans1: @part1.ans1, ans10: @part1.ans10, ans2: @part1.ans2, ans3: @part1.ans3, ans4: @part1.ans4, ans5: @part1.ans5, ans6: @part1.ans6, ans7: @part1.ans7, ans8: @part1.ans8, ans9: @part1.ans9 } }
    assert_redirected_to part1_url(@part1)
  end

  test "should destroy part1" do
    assert_difference('Part1.count', -1) do
      delete part1_url(@part1)
    end

    assert_redirected_to part1s_url
  end
end
