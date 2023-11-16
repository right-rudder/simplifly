class CreateReimbursements < ActiveRecord::Migration[7.0]
  def change
    create_table :reimbursements do |t|
      t.string :first_name
      t.string :last_name
      t.date :entry_date
      t.decimal :amount
      t.string :preferred_payment
      t.string :username
      t.string :upload

      t.timestamps
    end
  end
end
