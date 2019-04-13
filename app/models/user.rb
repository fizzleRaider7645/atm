class User < ApplicationRecord
  has_secure_password
  has_one :account
  has_one :balance, through: :account
  validates :account_number, presence: true
  # before_save :encrypted_account_number

  # private
  # def encrypted_account_number
  #    # salt = ENV['SALT'] # We save the value of: SecureRandom.random_bytes(64)
  #    key = ENV['KEY']   # We save the value of: ActiveSupport::KeyGenerator.new('password').generate_key(salt)
  #    crypt = ActiveSupport::MessageEncryptor.new(key)
  #    consumer_key = self.account_number # Input value from our form
  #    encrypted_data = crypt.encrypt_and_sign(consumer_key) # or crypt.encrypt_and_sign(self.consumer_key)
  #    self.consumer_key = encrypted_data
  #    # You can refactor to make these steps shorter.
  #  end
end
