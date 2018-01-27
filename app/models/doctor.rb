class Doctor < ApplicationRecord
  has_secure_password
  validates :address, uniqueness:true

  validates :name, :first_name, :last_name, :address,
            presence: true,
            length:{minimum:3,maximum: 25}

  validates :state,
            presence: true,
            length:{is: 2}
  validates :dea,
            length:{is: 9},
            uniqueness: true


  validates :npi ,
            presence:true,
            length:{is: 10},
            numericality: { only_integer: true},
            uniqueness: true

  validates :zipcode , presence: true

  validates :phonenumber,
            presence: true,
            uniqueness: true,
            length: {is: 10},
            numericality: { only_integer: true}
end
