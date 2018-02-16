require 'test_helper'

class Clinic::ClientsControllerTest < ActionDispatch::IntegrationTest
  test "should get rehab" do
    get clinic_clients_rehab_url
    assert_response :success
  end

  test "should get change" do
    get clinic_clients_change_url
    assert_response :success
  end

  test "should get messages" do
    get clinic_clients_messages_url
    assert_response :success
  end

  test "should get stats" do
    get clinic_clients_stats_url
    assert_response :success
  end

end
