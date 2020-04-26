require "application_system_test_case"

class Part5sTest < ApplicationSystemTestCase
  setup do
    @part5 = part5s(:one)
  end

  test "visiting the index" do
    visit part5s_url
    assert_selector "h1", text: "Part5s"
  end

  test "creating a Part5" do
    visit part5s_url
    click_on "New Part5"

    fill_in "Ans1", with: @part5.ans1
    fill_in "Ans10", with: @part5.ans10
    fill_in "Ans2", with: @part5.ans2
    fill_in "Ans3", with: @part5.ans3
    fill_in "Ans4", with: @part5.ans4
    fill_in "Ans5", with: @part5.ans5
    fill_in "Ans6", with: @part5.ans6
    fill_in "Ans7", with: @part5.ans7
    fill_in "Ans8", with: @part5.ans8
    fill_in "Ans9", with: @part5.ans9
    click_on "Create Part5"

    assert_text "Part5 was successfully created"
    click_on "Back"
  end

  test "updating a Part5" do
    visit part5s_url
    click_on "Edit", match: :first

    fill_in "Ans1", with: @part5.ans1
    fill_in "Ans10", with: @part5.ans10
    fill_in "Ans2", with: @part5.ans2
    fill_in "Ans3", with: @part5.ans3
    fill_in "Ans4", with: @part5.ans4
    fill_in "Ans5", with: @part5.ans5
    fill_in "Ans6", with: @part5.ans6
    fill_in "Ans7", with: @part5.ans7
    fill_in "Ans8", with: @part5.ans8
    fill_in "Ans9", with: @part5.ans9
    click_on "Update Part5"

    assert_text "Part5 was successfully updated"
    click_on "Back"
  end

  test "destroying a Part5" do
    visit part5s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Part5 was successfully destroyed"
  end
end
