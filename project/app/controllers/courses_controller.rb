class CoursesController < ApplicationController
	def new
		@course = Course.new
	end

	def create
		subject=Course.create(name: params[:course][:name], user: current_user)
		if subject.save
			redirect_to user_path(current_user)
		else
			flash[:error] = subject.errors.full_messages.to_sentence
      		redirect_to courses_new_path
      	end
	end
end
