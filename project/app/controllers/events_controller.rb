class EventsController < ApplicationController
	def new
		@event = Event.new
	end

	def create
		even=Event.create(location: params[:event][:location], user: current_user, time: params[:event][:time])
		if even.save
			redirect_to user_path(current_user)
		else
			flash[:error] = even.errors.full_messages.to_sentence
      		redirect_to events_new_path
      	end
	end
end