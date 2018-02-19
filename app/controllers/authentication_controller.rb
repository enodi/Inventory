class AuthenticationController < ApplicationController
  skip_before_action :authorize_request, only: :authenticate
  def authenticate
    auth_object = AuthenticateUser.new(auth_params[:email], auth_params[:password])
    auth_token = auth_object.call(auth_object.user.id)
    json_response(auth_token: auth_token)
  end

  private

  def auth_params
    params.permit(:email, :password)
  end
end
