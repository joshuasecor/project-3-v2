class AboutsController < ApplicationController
	def index
		@abouts = About.all
	end
end
