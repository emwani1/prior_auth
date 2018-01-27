class CreateInsurances < ActiveRecord::Migration[5.0]
  def change
    create_table :insurances do |t|
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
