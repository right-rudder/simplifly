class CreateRegistrationForms < ActiveRecord::Migration[7.0]
  def change
    create_table :registration_forms do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :emergency_name
      t.string :emergency_phone
      t.string :emergency_email
      t.string :course
      t.integer :hours_planned
      t.text :goal
      t.string :financed
      t.float :total_time
      t.string :certificates_held
      t.boolean :committed

      t.timestamps
    end
  end
end
