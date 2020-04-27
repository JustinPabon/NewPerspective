require 'test_helper'

class Part2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @part2 = part2s(:one)
  end

  test "should get index" do
    get part2s_url
    assert_response :success
  end

  test "should get new" do
    get new_part2_url
    assert_response :success
  end

  test "should create part2" do
    assert_difference('Part2.count') do
      post part2s_url, params: { part2: { ans1: @part2.ans1, ans10: @part2.ans10, ans2: @part2.ans2, ans3: @part2.ans3, ans4: @part2.ans4, ans5: @part2.ans5, ans6: @part2.ans6, ans7: @part2.ans7, ans8: @part2.ans8, ans9: @part2.ans9 } }
    end

    assert_redirected_to part2_url(Part2.last)
  end

  test "should show part2" do
    get part2_url(@part2)
    assert_response :success
  end

  test "should get edit" do
    get edit_part2_url(@part2)
    assert_response :success
  end

  test "should update part2" do
    patch part2_url(@part2), params: { part2: { ans1: @part2.ans1, ans10: @part2.ans10, ans2: @part2.ans2, ans3: @part2.ans3, ans4: @part2.ans4, ans5: @part2.ans5, ans6: @part2.ans6, ans7: @part2.ans7, ans8: @part2.ans8, ans9: @part2.ans9 } }
    assert_redirected_to part2_url(@part2)
  end

  test "should destroy part2" do
    assert_difference('Part2.count', -1) do
      delete part2_url(@part2)
    end

    assert_redirected_to part2s_url
  end
end
