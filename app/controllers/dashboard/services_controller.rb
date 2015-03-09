class Dashboard::ServicesController < ApplicationController

  def index
  	@services = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    service = Service.new(service_params)
    if service.save
      redirect_to '/dashboard/services'
    end
  end

  private

  def service_params
    params.require(:service).permit(:name, :description, :is_featured, :level_id, :category_id)
  end

end