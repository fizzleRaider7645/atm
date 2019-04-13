class User < ApplicationRecord
  has_secure_password
  validates :account_number, uniqueness: true
  has_one :account
  has_one :balance, through: :account
end
