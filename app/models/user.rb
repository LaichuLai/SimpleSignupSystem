# email:string
# password_digest:string

# password:string virtual_attribute
# password_confirmation:string virtual_attribute

class User < ApplicationRecord
  has_secure_password
end
