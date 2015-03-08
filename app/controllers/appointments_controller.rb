class AppointmentsController < ApplicationController

	def index
    @appointments = Appointment.all
    @trainers = Trainer.all
  end

end
