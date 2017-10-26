require 'test_helper'

class BotonControllerTest < ActionDispatch::IntegrationTest
  test "should get btn" do
    get boton_btn_url
    assert_response :success
  end

end
