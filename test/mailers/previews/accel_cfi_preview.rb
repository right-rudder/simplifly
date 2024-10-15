# Preview all emails at http://localhost:3000/rails/mailers/book_downloads_mailer
class AccelCfiPreview < ActionMailer::Preview

  def new_accel_cfi
    accel_cfi = AccelCfi.last
    AccelCfiMailer.mail_cfi(accel_cfi)
  end

end
