class AppointmentsController < ApplicationController

	def index
    @appointments = Appointment.all
    @appointments.sort_by{:date}   ## not actually sure this is working
    @trainers = Trainer.all
  end

end
