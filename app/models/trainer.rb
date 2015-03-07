class Trainer < ActiveRecord::Base

	has_many :appointments
	
	has_many :comments
	
end
