class Reimbursement < ApplicationRecord
  #require "mini_magick"

  has_one_attached :receipt 

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :entry_date, presence: true
  validates :amount, presence: true
  validates :preferred_payment, presence: true
  validates :receipt, content_type: ['image/png', 'image/gif', 'image/jpeg', 'image/jpg'],
  size: { less_than: 3.megabytes, message: 'File size must be less than 5MB' }

#  before_save :resize_image, if: -> { receipt.attached? }
#
#  private
#
#  def resize_image
#    max_dimension = 800 # Adjust the maximum dimension as needed
#
#    # Create a MiniMagick::Image directly from the binary data
#    image = MiniMagick::Image.create(receipt.blob)
#    image.resize "#{max_dimension}x#{max_dimension}>"
#    
#    # Create a new ActiveStorage::Blob with the resized image data
#    resized_image_blob = ActiveStorage::Blob.create_after_upload!(
#      io: StringIO.new(image.to_blob),
#      filename: receipt.filename,
#      content_type: image.mime_type
#    )
#
#    # Replace the original attachment with the resized image
#    receipt.attach(resized_image_blob)
#  end

end
