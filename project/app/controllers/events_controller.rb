class EventsController < ApplicationController
  def index
  	@events = Event.all
  end

  def create
  	creator = current_user.id
  	location = (params[:event])[:location]
  	time = (params[:event])[:time]
  	course = (params[:event])[:course]
  	if Location.find_by(name: location).nil?
  		location = Location.create!(name: location, room: nil)
  	else
  		location = Location.find_by(name: location)
  	end
   	if Course.find_by(name: course).nil?
  		course = Course.create!(name: course, user: current_user)
  	else
  		course = Course.find_by(name: course)
  	end
    @event = Event.new(course_id: course.id, 
    					 user_id: creator, 
    					 time: time, 
    					 location_id: location.id,
    					 upcoming: true)

    if @event.save
      redirect_to :root
      return
    end
  end

  def new
  	@new_event = Event.new
  	render 'new'
  end
end
