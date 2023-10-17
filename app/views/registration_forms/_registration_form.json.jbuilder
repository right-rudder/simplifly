json.extract! registration_form, :id, :first_name, :last_name, :email, :phone, :street, :city, :state, :zip, :emergency_name, :emergency_phone, :emergency_email, :course, :hours_planned, :goal, :financed, :total_time, :certificates_held, :committed, :created_at, :updated_at
json.url registration_form_url(registration_form, format: :json)
