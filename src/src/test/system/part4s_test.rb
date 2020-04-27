require "application_system_test_case"

class Part4sTest < ApplicationSystemTestCase
  setup do
    @part4 = part4s(:one)
  end

  test "visiting the index" do
    visit part4s_url
    assert_selector "h1", text: "Part4s"
  end

  test "creating a Part4" do
    visit part4s_url
    click_on "New Part4"

    fill_in "Ans1", with: @part4.ans1
    fill_in "Ans10", with: @part4.ans10
    fill_in "Ans2", with: @part4.ans2
    fill_in "Ans3", with: @part4.ans3
    fill_in "Ans4", with: @part4.ans4
    fill_in "Ans5", with: @part4.ans5
    fill_in "Ans6", with: @part4.ans6
    fill_in "Ans7", with: @part4.ans7
    fill_in "Ans8", with: @part4.ans8
    fill_in "Ans9", with: @part4.ans9
    click_on "Create Part4"

    assert_text "Part4 was successfully created"
    click_on "Back"
  end

  test "updating a Part4" do
    visit part4s_url
    click_on "Edit", match: :first

    fill_in "Ans1", with: @part4.ans1
    fill_in "Ans10", with: @part4.ans10
    fill_in "Ans2", with: @part4.ans2
    fill_in "Ans3", with: @part4.ans3
    fill_in "Ans4", with: @part4.ans4
    fill_in "Ans5", with: @part4.ans5
    fill_in "Ans6", with: @part4.ans6
    fill_in "Ans7", with: @part4.ans7
    fill_in "Ans8", with: @part4.ans8
    fill_in "Ans9", with: @part4.ans9
    click_on "Update Part4"

    assert_text "Part4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Part4" do
    visit part4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Part4 was successfully destroyed"
  end
end
