# frozen_string_literal: true

class SendReactivationEmail
  include Interactor
  include Wisper::Publisher

  def call
    if context.user.fetch(:tags).include?('deactivated')
      publish(:email_sent, { message: 'reactivation email sent', recipient: context.email })
    end
  end
end
