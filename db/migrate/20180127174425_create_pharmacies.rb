class CreatePharmacies < ActiveRecord::Migration[5.0]
  def change
    create_table :pharmacies do |t|
      t.integer :npi
      t.string :name
      t.string :address
      t.integer :phonenumber
      t.integer :zipcode
      t.string :state
      t.string :password_digest
      t.timestamps
    end
  end
end
