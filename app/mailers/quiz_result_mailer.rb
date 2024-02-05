class QuizResultMailer < ApplicationMailer

  default from: 'no-reply@idealaviationstlouis.com'

  def quiz_result_email(quiz_result)
    @quiz_result = quiz_result
    if Rails.env.production?
      mail(to: @quiz_result.email, bcc: ["info@idealaviationstlouis.com", "info@idealaviationstl.com"], subject: "✈️ Thanks for Taking Our Quiz!")
    else
      mail(to: @quiz_result.email, bcc: ["info@idealaviationstlouis.com"], subject: "✈️ Thanks for Taking Our Quiz!")
    end
  end



end
