class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :firstname
      t.string :lastname
      t.date :dateofbirth
      t.string :address
      t.string :phonenumber
      t.references :request, foreign_key:true

      t.timestamps
    end
  end
end
