class User < ApplicationRecord
  before_save { self.email = email.downcase }

  validates :name, presence: true
  validates :email, presence: true,
            uniqueness: { case_sensitive: false }
  validates :terms, presence: true

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
