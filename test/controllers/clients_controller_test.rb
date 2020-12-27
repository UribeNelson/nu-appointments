require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    sign_in users(:owner)
    get clients_path
    assert_response :success
  end

  test 'should get create' do
    sign_in users(:owner)
    get new_client_path
    assert_response :success
  end

  test 'should get update' do
    sign_in users(:owner)
    get edit_client_path(1)
    assert_response :success
  end
end
