class ResourcesController < ApplicationController
    
	def new
		@resource = Resource.new
	end

    # creating a new recourse and possible group it in a course 
	def create
	    @resource = Resource.create(name: params[:resources][:title], user: current_user)
		if @resource.save
			redirect_to user_path(current_user)
		else
			flash[:error] = resource.errors.full_messages.to_sentence
      		redirect_to resources_new_path
		end
	end
	
	def index
		@resource = Resource.all
	end
end