require "application_system_test_case"

class Part1sTest < ApplicationSystemTestCase
  setup do
    @part1 = part1s(:one)
  end

  test "visiting the index" do
    visit part1s_url
    assert_selector "h1", text: "Part1s"
  end

  test "creating a Part1" do
    visit part1s_url
    click_on "New Part1"

    fill_in "Ans1", with: @part1.ans1
    fill_in "Ans10", with: @part1.ans10
    fill_in "Ans2", with: @part1.ans2
    fill_in "Ans3", with: @part1.ans3
    fill_in "Ans4", with: @part1.ans4
    fill_in "Ans5", with: @part1.ans5
    fill_in "Ans6", with: @part1.ans6
    fill_in "Ans7", with: @part1.ans7
    fill_in "Ans8", with: @part1.ans8
    fill_in "Ans9", with: @part1.ans9
    click_on "Create Part1"

    assert_text "Part1 was successfully created"
    click_on "Back"
  end

  test "updating a Part1" do
    visit part1s_url
    click_on "Edit", match: :first

    fill_in "Ans1", with: @part1.ans1
    fill_in "Ans10", with: @part1.ans10
    fill_in "Ans2", with: @part1.ans2
    fill_in "Ans3", with: @part1.ans3
    fill_in "Ans4", with: @part1.ans4
    fill_in "Ans5", with: @part1.ans5
    fill_in "Ans6", with: @part1.ans6
    fill_in "Ans7", with: @part1.ans7
    fill_in "Ans8", with: @part1.ans8
    fill_in "Ans9", with: @part1.ans9
    click_on "Update Part1"

    assert_text "Part1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Part1" do
    visit part1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Part1 was successfully destroyed"
  end
end
