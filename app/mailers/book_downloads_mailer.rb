class BookDownloadsMailer < ApplicationMailer

  default from: 'no-reply@idealaviationstlouis.com'

  def book_downloads(book_download)
    @book_download = book_download

    mail(to: @book_download.email, bcc: ["info@idealaviationstlouis.com", "info@idealaviationstl.com"], subject: "✈️ Ideal Aviation FREE Pilot Training Booklet")
  end


end
