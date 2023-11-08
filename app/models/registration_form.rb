class RegistrationForm < ApplicationRecord
  before_validation :strip_phone_number


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

end
