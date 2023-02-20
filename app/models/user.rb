class User < ApplicationRecord
  has_secure_password
  validates :password, presence: true, length: { minimum: 3 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :first_name, presence: true
  validates :last_name, presence: true

  def self.authenticate_with_credentials(email, password)
    @user = self.find_by_email(email)

    if @user && @user.authenticate(password)
      @user
    else
      nil
    end
  end

end
