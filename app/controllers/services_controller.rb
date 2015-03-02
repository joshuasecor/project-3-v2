class ServicesController < ApplicationController

	def show
  	@service = Service.find(params[:id])
  end

	def index
    @serves = Service.all
  end

end
