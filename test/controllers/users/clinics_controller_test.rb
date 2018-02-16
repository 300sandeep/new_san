require 'test_helper'

class Users::ClinicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_clinics_index_url
    assert_response :success
  end

  test "should get new" do
    get users_clinics_new_url
    assert_response :success
  end

  test "should get edit" do
    get users_clinics_edit_url
    assert_response :success
  end

  test "should get show" do
    get users_clinics_show_url
    assert_response :success
  end

end
