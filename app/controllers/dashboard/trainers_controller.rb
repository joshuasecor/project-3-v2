class Dashboard::TrainersController < ApplicationController
  def index
  	@trainers = Trainer.all
  end
end