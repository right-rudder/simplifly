class RegistrationFormsMailer < ApplicationMailer
  def send_registration_form_pdf(registration_form)
    @registration_form = registration_form
    pdf = WickedPdf.new.pdf_from_string(
      render_to_string(
        pdf: registration_form.first_name + ' ' + registration_form.last_name + ' Registration Form',
        template: 'registration_forms_mailer/pdf_template',
        layout: 'pdf_mailer',
        locals: { registration_form: registration_form }
      )
    )

    attachments["#{registration_form.first_name} #{registration_form.last_name} Registration Form.pdf"] = pdf
    mail(to: registration_form.email, subject: 'Your Registration Form PDF')
  end
end