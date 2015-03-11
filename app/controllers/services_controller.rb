class ServicesController < ApplicationController

  def index
    @services = Service.all
  end

	def show
  	@service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    @service.update_attributes(service_params)
    redirect_to dashboard_services_path
  end

  def destroy
    Service.find(params[:id]).destroy
    redirect_to dashboard_services_path
  end

  private

  def service_params
    params.require(:service).permit(:name, :description, :is_featured, :level_id, :category_id, :photo)
  end

end
