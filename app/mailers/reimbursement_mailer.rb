class ReimbursementMailer < ApplicationMailer

  default from: 'no-reply@simplifly-co.com'

  def reimbursement_mailer(reimbursement)
    @reimbursement = reimbursement

    if Rails.env.production?
      #mail(to: @reimbursement.email, bcc: ["no-reply@simplifly-co.com", "info@simpliflyco.com"], subject: "SimpliFly Reimbursement Form Submitted")
      mail(to: @reimbursement.email, bcc: ["no-reply@simplifly-co.com"], subject: "SimpliFly Reimbursement Form Submitted")
    else
      mail(to: @reimbursement.email, bcc: ["no-reply@simplifly-co.com"], subject: "SimpliFly Reimbursement Form Submitted")
    end
  end


end
