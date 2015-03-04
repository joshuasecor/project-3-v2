class AboutsController < ApplicationController
	def index
		@about = About.last
	end
end
