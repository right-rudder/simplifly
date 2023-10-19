class AddAvailabilityToRegistrationForms < ActiveRecord::Migration[7.0]
  def change
    add_column :registration_forms, :availability, :text
  end
end
