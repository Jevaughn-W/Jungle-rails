class User < ApplicationRecord
  has_secure_password
  validates :password, presence: true, length: { minimum: 3 }
  validates :email, uniqueness: { case_sensitive: false }
end
