class MessageConfirmationMailer < ApplicationMailer

  default from: 'no-reply@idealaviationstlouis.com'

  def message_confirmation_email(message)
    @message = message

    mail(to: @message.email, bcc: ["info@idealaviationstlouis.com", "info@idealaviationstl.com"], subject: "✈️ Thank you for contacting Ideal Aviation")
  end

end
