class User < ApplicationRecord
  has_secure_password

  validates :name,
    presence: true,
    length: {
      minimum: 5,
      maximum: 255
    }

  validates :email,
    presence: true,
    length: {
      minimum: 5,
      maximum: 255
    }

end
