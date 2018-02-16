require 'test_helper'

class Clinic::AccountsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clinic_accounts_index_url
    assert_response :success
  end

end
