class CreateAccelCfis < ActiveRecord::Migration[7.0]
  def change
    create_table :accel_cfis do |t|
      t.string :name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
