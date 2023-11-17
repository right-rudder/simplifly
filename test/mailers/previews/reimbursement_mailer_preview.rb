# Preview all emails at http://localhost:3000/rails/mailers/reimbursement_mailer
class ReimbursementMailerPreview < ActionMailer::Preview
  def new_reimbursement
    reimbursement = Reimbursement.last
    ReimbursementMailer.reimbursement_mailer(reimbursement)
  end
end
