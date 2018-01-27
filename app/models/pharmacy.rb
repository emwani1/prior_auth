class Pharmacy < ApplicationRecord
  has_secure_password
  validates :address, uniqueness:true

  validates :name, :address,
            presence: true

  validates :state,
            presence: true,
            length:{is: 2}

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
