require "application_system_test_case"

class Part3sTest < ApplicationSystemTestCase
  setup do
    @part3 = part3s(:one)
  end

  test "visiting the index" do
    visit part3s_url
    assert_selector "h1", text: "Part3s"
  end

  test "creating a Part3" do
    visit part3s_url
    click_on "New Part3"

    fill_in "Ans1", with: @part3.ans1
    fill_in "Ans10", with: @part3.ans10
    fill_in "Ans2", with: @part3.ans2
    fill_in "Ans3", with: @part3.ans3
    fill_in "Ans4", with: @part3.ans4
    fill_in "Ans5", with: @part3.ans5
    fill_in "Ans6", with: @part3.ans6
    fill_in "Ans7", with: @part3.ans7
    fill_in "Ans8", with: @part3.ans8
    fill_in "Ans9", with: @part3.ans9
    click_on "Create Part3"

    assert_text "Part3 was successfully created"
    click_on "Back"
  end

  test "updating a Part3" do
    visit part3s_url
    click_on "Edit", match: :first

    fill_in "Ans1", with: @part3.ans1
    fill_in "Ans10", with: @part3.ans10
    fill_in "Ans2", with: @part3.ans2
    fill_in "Ans3", with: @part3.ans3
    fill_in "Ans4", with: @part3.ans4
    fill_in "Ans5", with: @part3.ans5
    fill_in "Ans6", with: @part3.ans6
    fill_in "Ans7", with: @part3.ans7
    fill_in "Ans8", with: @part3.ans8
    fill_in "Ans9", with: @part3.ans9
    click_on "Update Part3"

    assert_text "Part3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Part3" do
    visit part3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Part3 was successfully destroyed"
  end
end
