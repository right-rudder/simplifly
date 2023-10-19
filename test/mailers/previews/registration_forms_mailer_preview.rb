# Preview all emails at http://localhost:3000/rails/mailers/registration_forms_mailer
class RegistrationFormsMailerPreview < ActionMailer::Preview
  def send_registration_form_pdf
    registration_form = RegistrationForm.last

    RegistrationFormsMailer.send_registration_form_pdf(registration_form)
  end
end
