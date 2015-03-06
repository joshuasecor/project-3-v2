class DashboardController < ApplicationController

  def index
  	@appointments = Appointment.all
  end



end
