
# Uses the bcrypt gem for aunthentication.
require 'bcrypt'

class User < ActiveRecord::Base
	include ActiveModel::Validations

	# "dependent: :destroy" means that if a user is deleted, all of their comments are also deleted.
	has_many :comments, dependent: :destroy

	# This is a bcrpyt method.
	has_secure_password

	# When a new user is created, there email must original.
	validates :email, uniqueness: true
	validates_presence_of :email

end

