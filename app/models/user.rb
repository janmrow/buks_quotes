class User < ActiveRecord::Base
  has_many :quotes
  has_secure_password
  validates_presence_of :username, :password, :password_confirmation
  validates_uniqueness_of :username

end
