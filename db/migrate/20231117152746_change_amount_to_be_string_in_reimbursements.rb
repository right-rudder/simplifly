class ChangeAmountToBeStringInReimbursements < ActiveRecord::Migration[7.0]
  def change
    change_column :reimbursements, :amount, :string
  end
end
