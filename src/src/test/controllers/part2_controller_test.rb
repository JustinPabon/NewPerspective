require 'test_helper'

class Part2ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get part2_index_url
    assert_response :success
  end

end
