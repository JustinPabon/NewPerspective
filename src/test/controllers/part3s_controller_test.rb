require 'test_helper'

class Part3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @part3 = part3s(:one)
  end

  test "should get index" do
    get part3s_url
    assert_response :success
  end

  test "should get new" do
    get new_part3_url
    assert_response :success
  end

  test "should create part3" do
    assert_difference('Part3.count') do
      post part3s_url, params: { part3: { ans1: @part3.ans1, ans10: @part3.ans10, ans2: @part3.ans2, ans3: @part3.ans3, ans4: @part3.ans4, ans5: @part3.ans5, ans6: @part3.ans6, ans7: @part3.ans7, ans8: @part3.ans8, ans9: @part3.ans9 } }
    end

    assert_redirected_to part3_url(Part3.last)
  end

  test "should show part3" do
    get part3_url(@part3)
    assert_response :success
  end

  test "should get edit" do
    get edit_part3_url(@part3)
    assert_response :success
  end

  test "should update part3" do
    patch part3_url(@part3), params: { part3: { ans1: @part3.ans1, ans10: @part3.ans10, ans2: @part3.ans2, ans3: @part3.ans3, ans4: @part3.ans4, ans5: @part3.ans5, ans6: @part3.ans6, ans7: @part3.ans7, ans8: @part3.ans8, ans9: @part3.ans9 } }
    assert_redirected_to part3_url(@part3)
  end

  test "should destroy part3" do
    assert_difference('Part3.count', -1) do
      delete part3_url(@part3)
    end

    assert_redirected_to part3s_url
  end
end
