class EventController < ApplicationController
  def index
  	@events = []
  	Event.all.each do |event|
  		if event.start_date >= Time.now.strftime("%Y-%m-%d")
  			@events << event
  		end
  	end
  end

  def create
  	@event = Event.new(title: params[:name], duration: params[:duration], desc: params[:desc], price: params[:price],start_date: params[:startdate], location: params[:location],user: current_user)
  	if @event.save
  		redirect_to root_path
  	else
  		flash[:danger] = "You must fill all the fields !"
  		redirect_to new_event_controller_path
  	end
  end

  def show
  	@event = Event.find(params[:id])
  	@author = @event.user
  	@author_name = @author.first_name + " " + @author.last_name
  end

end
