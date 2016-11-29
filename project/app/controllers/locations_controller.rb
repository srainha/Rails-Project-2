class LocationsController < ApplicationController
	def new
		@location = Location.new
	end

	def index
		@locations = Location.all
	end

	def create
	end
end