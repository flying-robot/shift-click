# frozen_string_literal: true

class LoginUser
  include Interactor::Organizer

  organize AuthenticateCredentials, SendWelcomeBackEmail, SendReactivationEmail
end
