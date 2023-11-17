class AddEmailToReimbursements < ActiveRecord::Migration[7.0]
  def change
    add_column :reimbursements, :email, :string
  end
end
