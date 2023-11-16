json.extract! reimbursement, :id, :first_name, :last_name, :entry_date, :amount, :preferred_payment, :username, :upload, :created_at, :updated_at
json.url reimbursement_url(reimbursement, format: :json)
