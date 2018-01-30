class User < ApplicationRecord
  has_secure_password
  belongs_to :role
  validates :address, uniqueness:true

  validates :name, :address,
            presence: true,
            length:{minimum:3,maximum: 25}

  validates :state,
            presence: true,
            length:{is: 2}

  validates :username,
            uniqueness:true,
            length:{minimum:5, maximum:20}



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
