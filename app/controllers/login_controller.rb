# frozen_string_literal: true

class LoginController
  def self.create(params)
    LoginUser.call(
      email:    params[:email],
      password: params[:password]).success?
  end
end
