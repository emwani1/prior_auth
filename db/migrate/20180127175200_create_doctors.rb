class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :npi
      t.string :address
      t.string :state
      t.string :dea
      t.integer :zipcode

      t.timestamps
    end
  end
end
