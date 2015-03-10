class Appointment < ActiveRecord::Base

	belongs_to :service
	belongs_to :weekday
	belongs_to :trainer
	
end
