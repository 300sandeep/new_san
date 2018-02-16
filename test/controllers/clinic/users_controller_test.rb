require 'test_helper'

class Clinic::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get clinic_users_home_url
    assert_response :success
  end

end
