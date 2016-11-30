class ResourcesController < ApplicationController
    
	def new
		@resource = Resource.new
	end

    # creating a new recourse and possible group it in a course 
	def create
		
	    @resource = Resource.create(title: (params[:resource])[:title], description: (params[:resource])[:description], course: (params[:resource])[:course], link: (params[:resource])[:link])
		if @resource.save
			@resource.save!
			redirect_to resources_index_path
		else
			flash[:error] = @resource.errors.full_messages.to_sentence
      		redirect_to resources_new_path
		end
	end
	
	def index
		@resource = Resource.all
	end
end