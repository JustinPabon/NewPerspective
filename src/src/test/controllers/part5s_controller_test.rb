require 'test_helper'

class Part5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @part5 = part5s(:one)
  end

  test "should get index" do
    get part5s_url
    assert_response :success
  end

  test "should get new" do
    get new_part5_url
    assert_response :success
  end

  test "should create part5" do
    assert_difference('Part5.count') do
      post part5s_url, params: { part5: { ans1: @part5.ans1, ans10: @part5.ans10, ans2: @part5.ans2, ans3: @part5.ans3, ans4: @part5.ans4, ans5: @part5.ans5, ans6: @part5.ans6, ans7: @part5.ans7, ans8: @part5.ans8, ans9: @part5.ans9 } }
    end

    assert_redirected_to part5_url(Part5.last)
  end

  test "should show part5" do
    get part5_url(@part5)
    assert_response :success
  end

  test "should get edit" do
    get edit_part5_url(@part5)
    assert_response :success
  end

  test "should update part5" do
    patch part5_url(@part5), params: { part5: { ans1: @part5.ans1, ans10: @part5.ans10, ans2: @part5.ans2, ans3: @part5.ans3, ans4: @part5.ans4, ans5: @part5.ans5, ans6: @part5.ans6, ans7: @part5.ans7, ans8: @part5.ans8, ans9: @part5.ans9 } }
    assert_redirected_to part5_url(@part5)
  end

  test "should destroy part5" do
    assert_difference('Part5.count', -1) do
      delete part5_url(@part5)
    end

    assert_redirected_to part5s_url
  end
end
