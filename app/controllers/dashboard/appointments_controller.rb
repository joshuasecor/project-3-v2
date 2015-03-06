class Dashboard::AppointmentsController < ApplicationController
  def index
  	@appointments = Appointment.all
  end
end