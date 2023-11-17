class AddStatusToReimbursements < ActiveRecord::Migration[7.0]
  def change
    add_column :reimbursements, :status, :string
  end
end
