class User < ActiveRecord::Base
  # this doc created using rails g model User email:string password_digest:string (pw_digest will hash and salt)
  has_secure_password
  # don't forget to rake db:migrate then g controller users new create
  has_many :reviews
  has_many :products, through: :reviews
end
