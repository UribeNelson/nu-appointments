require 'test_helper'

class InvitationsControllerTest < ActionDispatch::IntegrationTest
  test 'should create invitation' do
    token = api_sign_in(users(:owner))
    post api_invitations_path, params: { email: 'email@domain.com' },
                               headers: { "Authorization": "Bearer #{token}" }
    assert_response :created
  end

  test 'cannot create invitation with an existing email' do
    current_user = users(:owner)
    sign_in current_user
    post api_invitations_path, params: { email: current_user.email }
    assert_response :bad_request
  end
end
