class AddPatientReferenceToRequests < ActiveRecord::Migration[5.0]
  def change
    add_reference :requests , :patient ,foreign_key:true
  end
end
