class HomeRidersController < ApplicationController
  
  def index
    @meeting = Meeting.find(params[:meeting_id])
    @riders = @meeting.home_riders
  end
end

