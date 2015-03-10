class Dashboard::TrainersController < ApplicationController

  def index
  	@trainers = Trainer.all
  end

  def new
    @trainer = Trainer.new
  end

  def create
    trainer = Trainer.new(trainer_params)
    if trainer.save
      redirect_to '/dashboard/trainers'
    end
  end

  private

  def trainer_params
    params.require(:trainer).permit(:first_name, :last_name, :is_featured, :bio, :photo)
  end

end