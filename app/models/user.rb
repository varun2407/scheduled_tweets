#email:string
#password_digest:string

#Virtual:
#password:string 
#password_confirmation:string 
class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true
end
