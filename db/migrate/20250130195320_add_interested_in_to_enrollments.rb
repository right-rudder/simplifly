class AddInterestedInToEnrollments < ActiveRecord::Migration[7.0]
  def change
    add_column :enrollments, :interested_in, :string
  end
end
