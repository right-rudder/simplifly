class AddTimeDetailsToRegistrationForms < ActiveRecord::Migration[7.0]
  def change
    add_column :registration_forms, :time_details, :text
  end
end
