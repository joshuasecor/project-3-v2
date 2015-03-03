class DashboardController < ApplicationController
  def index
  	@abouts = About.all
  	@categories = Category.all
  	@services = Service.all
  	@trainers = Trainer.all
  end
end
