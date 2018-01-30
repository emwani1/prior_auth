class NpiIntegerLimit < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :npi, :integer, limit: 8
  end
end
