class User < ApplicationRecord
  before_save { email.downcase! }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  has_secure_password

  validates :name, presence: true,
                  length: { minimum: 3, maximum: 50 }
  validates :email, presence: true,
                  length: { minimum: 7, maximum: 50 },
                  format: { with: VALID_EMAIL_REGEX },
                  uniqueness: { case_sensitive: false }

  validates :password, presence: true,
                      length: { minimum: 6 }
end
