class TrainersController < ApplicationController

  def index
    @trainers = Trainer.all
  end

	def show
  	@trainer = Trainer.find(params[:id])
    render json: @trainer
  end

  def update
    @trainer = Trainer.find(params[:id])
    @trainer.update_attributes(trainer_params)
    redirect_to dashboard_trainers_path
  end

  def destroy
    Trainer.find(params[:id]).destroy
    redirect_to dashboard_trainers_path
  end

  private

  def trainer_params
    params.require(:trainer).permit(:first_name, :last_name, :is_featured, :bio, :photo)
  end

end
