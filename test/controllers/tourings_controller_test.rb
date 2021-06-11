require 'test_helper'

class TouringsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tourings_index_url
    assert_response :success
  end

end
