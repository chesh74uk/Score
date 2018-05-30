class AwayRidersController < ApplicationController
  def index
    @meeting = Meeting.find(params[:meeting_id])
    @riders = @meeting.away_riders
  end
end
