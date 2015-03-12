
# Uses the bcrypt gem for aunthentication.
require 'bcrypt'

class User < ActiveRecord::Base
	include ActiveModel::Validations

  #Paperclip
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/assets/Trainer09.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

	# "dependent: :destroy" means that if a user is deleted, all of their comments are also deleted.
	has_many :comments, dependent: :destroy

	# This is a bcrpyt method.
	has_secure_password
	validates_presence_of :password

	# When a new user is created, there email must original.
	validates :email, uniqueness: true
	validates_presence_of :email

end

