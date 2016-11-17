class CoursesController < ApplicationController
	def new
		@course = Course.new
	end

	def create
		Course.create(name: params[:courses][:name])
	end
end
