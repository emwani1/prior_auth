class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.string :medication
      t.string :directions
      t.integer :quantity
      t.integer :daysupply

      t.timestamps
    end
  end
end
