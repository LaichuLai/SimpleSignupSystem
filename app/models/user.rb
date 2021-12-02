# email:string
# password_digest:string

# password:string virtual_attribute
# password_confirmation:string virtual_attribute

class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "請填入正確email格式"}
end
