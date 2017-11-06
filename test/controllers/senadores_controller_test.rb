require 'test_helper'

class SenadoresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get senadores_index_url
    assert_response :success
  end

end
