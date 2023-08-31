# frozen_string_literal: true

class SendWelcomeBackEmail
  include Interactor
  include Wisper::Publisher

  def call
    if context.user.fetch(:last_login_at) < 1.days.ago
      publish(:email_sent, { message: 'welcome back email sent', recipient: context.email })
    end
  end
end
