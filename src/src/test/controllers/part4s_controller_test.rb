require 'test_helper'

class Part4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @part4 = part4s(:one)
  end

  test "should get index" do
    get part4s_url
    assert_response :success
  end

  test "should get new" do
    get new_part4_url
    assert_response :success
  end

  test "should create part4" do
    assert_difference('Part4.count') do
      post part4s_url, params: { part4: { ans1: @part4.ans1, ans10: @part4.ans10, ans2: @part4.ans2, ans3: @part4.ans3, ans4: @part4.ans4, ans5: @part4.ans5, ans6: @part4.ans6, ans7: @part4.ans7, ans8: @part4.ans8, ans9: @part4.ans9 } }
    end

    assert_redirected_to part4_url(Part4.last)
  end

  test "should show part4" do
    get part4_url(@part4)
    assert_response :success
  end

  test "should get edit" do
    get edit_part4_url(@part4)
    assert_response :success
  end

  test "should update part4" do
    patch part4_url(@part4), params: { part4: { ans1: @part4.ans1, ans10: @part4.ans10, ans2: @part4.ans2, ans3: @part4.ans3, ans4: @part4.ans4, ans5: @part4.ans5, ans6: @part4.ans6, ans7: @part4.ans7, ans8: @part4.ans8, ans9: @part4.ans9 } }
    assert_redirected_to part4_url(@part4)
  end

  test "should destroy part4" do
    assert_difference('Part4.count', -1) do
      delete part4_url(@part4)
    end

    assert_redirected_to part4s_url
  end
end
