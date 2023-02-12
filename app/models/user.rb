#email:string
#password_digest:string

#Virtual:
#password:string 
#password_confirmation:string 
class User < ApplicationRecord
  has_many :twitter_accounts

  has_secure_password

  validates :email, presence: true, format: {with: /\A[^@\s]+@[^@\s]+\z/, message: "Must be a valid email address"}
end