class HotspotsController < ApplicationController
	def index
		hotspots = Hotspot.all
		render json: hotspots
	end
end