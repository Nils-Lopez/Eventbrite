class ParticipantsController < ApplicationController
  def new
  	@event = Event.find(params[:format])

  end

  def create
  	Participant.create(user: current_user, event_id: params[:event])
  	redirect_to event_path(params[:event])
  end

  def index
  end

  def destroy

  	Participant.find(params[:id]).destroy
  	redirect_to root_path
  end
end
