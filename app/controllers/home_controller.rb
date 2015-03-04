class HomeController < ApplicationController

	def index
    @services = Service.where(is_featured: 'true').all
    @about = About.last
    @trainers = Trainer.all
  end

end
