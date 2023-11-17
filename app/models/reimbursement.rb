class Reimbursement < ApplicationRecord
  require "mini_magick"

  has_one_attached :receipt do |attachable|
    attachable.variant :thumb, resize_to_limit: [1000, 1000]
  end

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :entry_date, presence: true
  validates :amount, presence: true
  validates :preferred_payment, presence: true

#  before_save :resize_image, if: -> { receipt.attached? }
#
#  private
#
#  def resize_image
#    image = MiniMagick::Image.read(receipt.blob)
#    image.resize '800x800' # Adjust the dimensions as needed
#    io = image.to_io
#    io.rewind
#    receipt.attach(io: io, filename: receipt.filename)
#  end

end
