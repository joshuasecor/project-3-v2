
# Uses the bcrypt gem for aunthentication.
require 'bcrypt'

class User < ActiveRecord::Base

	# "dependent: :destroy" means that if a user is deleted, all of their comments are also deleted.
	has_many :comments, dependent: :destroy

	# This is a bcrpyt method.
	has_secure_password

	# When a new user is created, both their username and email must original.
	validates :username, uniqueness: true
	validates :email, uniqueness: true

end
