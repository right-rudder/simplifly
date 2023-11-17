class Reimbursement < ApplicationRecord
  has_one_attached :receipt 

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :entry_date, presence: true
  validates :amount, presence: true
  validates :preferred_payment, presence: true
end
