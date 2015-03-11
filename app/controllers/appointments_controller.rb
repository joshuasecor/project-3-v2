class AppointmentsController < ApplicationController

	def index
    @appointments = Appointment.all
    @trainers = Trainer.all
  end

  def show
    @appointment = Appointment.find(params[:id])
    render json: @appointment
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update_attributes(appointment_params)
    redirect_to dashboard_appointments_path
  end

  def destroy
    Appointment.find(params[:id]).destroy
    redirect_to dashboard_appointments_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:day, :start_time, :end_time, :service_id, :trainer_id, :weekday_id)
  end

end
