class AccelCfi < ApplicationRecord
  before_validation :strip_phone_number
  after_save :to_ghl if Rails.env.production?

  validates :name, presence: true
  validates :phone, presence: true, format: { with: /\A\d{10}\z/, message: "must be a valid 10-digit phone number" }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }

  def strip_phone_number
    self.phone = phone.to_s.gsub(/[-() ]/, "")
  end

  def to_ghl
    ghl_url = ENV['ghl_accel_cfi']
    ghl_payload = {
      "Name" =>  "#{self.name}",
      "email" => "#{self.email}",
      "phone" => "#{self.phone}",
    }
    HTTParty.post(ghl_url, body: ghl_payload.to_json, headers: { "Content-Type" => "application/json" })
  end
end
