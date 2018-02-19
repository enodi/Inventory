class AuthenticateUser
  def initialize(email, password)
    @email = email
    @password = password
  end

  def call(user_id)
    JsonWebToken.encode(user_id: user_id) if user
  end

  attr_accessor :email, :password

  def user
    user = User.find_by_email(email)
    return user if user && user.authenticate(password)
    raise(ExceptionHandler::AuthenticationError, Message.invalid_credentials)
  end
end
