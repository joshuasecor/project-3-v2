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
      redirect_to dashboard_services_path
    # else
    #   flash[:alert] = "Email is already in use."
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  private

  def service_params
    params.require(:service).permit(:name, :description, :is_featured, :level_id, :category_id, :photo)
  end

end