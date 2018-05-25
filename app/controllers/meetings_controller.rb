class MeetingsController < ApplicationController
    
    def index
    end
    
    def new
        @meeting = Meeting.new
    end
    
    def create
        @meeting = Meeting.create(meeting_params)
        redirect_to @meeting
    end
    
    def show
       @meeting = Meeting.find(params[:id]) 
    end
    
    private
    
    def meeting_params
        params.require(:meeting).permit(:meeting_date, :home_team, :away_team)
    end
    
end
