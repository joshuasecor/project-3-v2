module ApplicationHelper

	def find_user
		@user = User.new
	end

	def find_appointment
		@appointment = Appointment.new
	end

	def find_service
		@service = Service.new
	end

end
