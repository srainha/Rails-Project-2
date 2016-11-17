class ResourcesController < ApplicationController
    
	def new
		@resource = Resource.new
	end

    # creating a new recourse and possible group it in a course 
	def create
	end
	
	def show
    	@resource = Resource.find(params[:id])
	end
end
