class Insurance < ApplicationRecord
  has_secure_password
  validates :username,
            presence: true,
            uniqueness: true,
            length:{minimum:6, maximum:12}
end
