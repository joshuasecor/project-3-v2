class TrainersController < ApplicationController

	def show
  	@trainer = Trainer.find(params[:id])
  end

 	def index
    @trainers = Trainer.all
  end

end
