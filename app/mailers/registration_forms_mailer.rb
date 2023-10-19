class RegistrationFormsMailer < ApplicationMailer
  def send_registration_form_pdf(registration_form)
    pdf = WickedPdf.new.pdf_from_string(
      render_to_string(
        pdf: 'registration_form',
        template: 'registration_forms/pdf_template.html.erb',
        #layout: 'pdf_layout.html.erb',
        layout: false,  # This line excludes the layout
        locals: { registration_form: registration_form }
      )
    )

    attachments['registration_form.pdf'] = pdf
    mail(to: registration_form.email, subject: 'Your Registration Form PDF')
  end
end