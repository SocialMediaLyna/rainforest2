class User < ActiveRecord::Base
  # this doc created using rails g model User email:string password_digest:string (pw_digest will hash and salt)
  has_secure_password
  validates :name, presence: true
  has_many :reviews
  has_many :products, through: :reviews
end
