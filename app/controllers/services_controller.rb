class ServicesController < ApplicationController

	def show
  	@service = Service.find(params[:id])
  end

	def index
    @services = Service.all
  end

end
