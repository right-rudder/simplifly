class AccelCfiMailer < ApplicationMailer

  default from: 'no-reply@simplifly-co.com'

  def mail_cfi(accel_cfi)
    @accel_cfi = accel_cfi

    if Rails.env.production?
      mail(to: @accel_cfi.email, bcc: ["info@simplifly-co.com", "info@simpliflyco.com"], subject: "✈️ SimpliFly Accelerated CFI Program")
    else
      mail(to: @accel_cfi.email, bcc: ["info@simplifly-co.com"], subject: "✈️ SimpliFly Accelerated CFI Program")
    end
  end
end
