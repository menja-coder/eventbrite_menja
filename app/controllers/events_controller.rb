class EventsController < ApplicationController
  def index
  	@events = Event.all
  end

  def new
  	@event = Event.new()
  end

  def create
  	@events = Event.new(start_date: params[:start_date], duration: params[:duration].to_i, title: params[:title], description: params[:description], location: params[:location], admin_id: current_user.id)
	if @events.save
	redirect_to '/'
    else 
    	render :new
    end
  end

  def show
  	@events = Event.find(params[:id])
  end
end
