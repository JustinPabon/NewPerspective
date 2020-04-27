require 'test_helper'

class Part1ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get part1_index_url
    assert_response :success
  end

end
