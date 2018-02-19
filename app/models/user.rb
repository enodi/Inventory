class User < ApplicationRecord
  has_secure_password
  has_many :items
  
  validates_presence_of :username, :email, :password_digest
  validates_uniqueness_of :username, :email
end
