class Dashboard::AppointmentsController < ApplicationController

  def index
  	@appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def create
    appointment = Appointment.new(appointment_params)
    if appointment.save
      redirect_to '/dashboard/appointments'
    # else
    #   flash[:alert] = "Email is already in use."
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :start_time, :end_time, :service_id, :trainer_id, :weekday_id)
  end

end