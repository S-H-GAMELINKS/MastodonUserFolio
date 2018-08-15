require 'test_helper'

class FolioControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get folio_index_url
    assert_response :success
  end

end
