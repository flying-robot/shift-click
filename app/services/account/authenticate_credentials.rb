# frozen_string_literal: true

class AuthenticateCredentials
  include Interactor
  include Wisper::Publisher

  def call
    if user = User.find({ email: context.email, password: Digest::SHA1.hexdigest(context.password) })
      publish(:user_authenticated, { email: context.email, message: 'user authenticated' })
      context.user     = user
      context.password = '<redacted>'
    else
      publish(:user_unauthenticated, { email: context.email, message: 'user failed authentication' })
      context.fail!(error: 'invalid credentials provided')
    end
  end
end
