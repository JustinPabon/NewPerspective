require "application_system_test_case"

class Part2sTest < ApplicationSystemTestCase
  setup do
    @part2 = part2s(:one)
  end

  test "visiting the index" do
    visit part2s_url
    assert_selector "h1", text: "Part2s"
  end

  test "creating a Part2" do
    visit part2s_url
    click_on "New Part2"

    fill_in "Ans1", with: @part2.ans1
    fill_in "Ans10", with: @part2.ans10
    fill_in "Ans2", with: @part2.ans2
    fill_in "Ans3", with: @part2.ans3
    fill_in "Ans4", with: @part2.ans4
    fill_in "Ans5", with: @part2.ans5
    fill_in "Ans6", with: @part2.ans6
    fill_in "Ans7", with: @part2.ans7
    fill_in "Ans8", with: @part2.ans8
    fill_in "Ans9", with: @part2.ans9
    click_on "Create Part2"

    assert_text "Part2 was successfully created"
    click_on "Back"
  end

  test "updating a Part2" do
    visit part2s_url
    click_on "Edit", match: :first

    fill_in "Ans1", with: @part2.ans1
    fill_in "Ans10", with: @part2.ans10
    fill_in "Ans2", with: @part2.ans2
    fill_in "Ans3", with: @part2.ans3
    fill_in "Ans4", with: @part2.ans4
    fill_in "Ans5", with: @part2.ans5
    fill_in "Ans6", with: @part2.ans6
    fill_in "Ans7", with: @part2.ans7
    fill_in "Ans8", with: @part2.ans8
    fill_in "Ans9", with: @part2.ans9
    click_on "Update Part2"

    assert_text "Part2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Part2" do
    visit part2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Part2 was successfully destroyed"
  end
end
