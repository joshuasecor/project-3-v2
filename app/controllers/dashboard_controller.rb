class DashboardController < ApplicationController
  def index
  	@abouts = About.all
  	@categories = Category.all
  	@services = Services.all
  	@trainers = Trainers.all
  end
end
