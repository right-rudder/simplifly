class RegistrationForm < ApplicationRecord
  before_validation :strip_phone_number
  after_save :to_ghl


  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, presence: true, format: { with: /\A\d{10}\z/, message: "must be a valid 10-digit phone number" }
  validates :email, presence: true
  validates :street, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true, format: { with: /\A\d{5}\z/, message: "should be a 5-digit number" }
  validates :emergency_name, presence: true
  validates :emergency_phone, presence: true, format: { with: /\A\d{10}\z/, message: "must be a valid 10-digit phone number" }
  validates :emergency_email, presence: true
  validates :course, presence: true
  #validates :hours_planned, presence: true, numericality: { greater_than: 0 }
  validates :goal, presence: true
  validates :financed, presence: { message: "" }
  validates :availability, presence: true
  validates :time_details, presence: true
  validates :committed, inclusion: { in: [true], message: "" }

  def strip_phone_number
    self.phone = phone.to_s.gsub(/[-() ]/, "")
    self.emergency_phone = emergency_phone.to_s.gsub(/[-() ]/, "")
  end

  def to_ghl
    ghl_url = ENV['ghl_registration']
    ghl_payload = {
      "first_name" => "#{self.first_name}",
      "last_name" => "#{self.last_name}",
      "email" => "#{self.email}",
      "phone" => "#{self.phone}",
      "street" => "#{self.street}",
      "city" => "#{self.city}",
      "state" => "#{self.state}",
      "zip" => "#{self.zip}",
      "emergency_name" => "#{self.emergency_name}",
      "emergency_phone" => "#{self.emergency_phone}",
      "course" => "#{self.course}",
      "hours_planned" => "#{self.hours_planned}",
      "goal" => "#{self.goal}",
      "financed" => "#{self.financed}",
      "total_time" => "#{self.total_time}",
      "certificates_held" => "#{self.certificates_held}",
      "committed" => "#{self.committed}",
      "availability" => "#{self.availability}",
      "time_details" => "#{self.time_details}",
    }     
    HTTParty.post(ghl_url, body: ghl_payload.to_json, headers: { "Content-Type" => "application/json" })
  end

end
