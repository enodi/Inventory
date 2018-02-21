class UsersController < ApplicationController
  skip_before_action :authorize_request, only: [:create, :index]
  def create
    user = User.create!(user_params)
    auth_token = AuthenticateUser.new(user.email, user.password).call(user.id)
    response = { message: Message.account_created, token: auth_token }
    json_response(response, :created)
  end

  private

  def user_params
    params.permit(
      :username,
      :email,
      :password
    )
  end
end
