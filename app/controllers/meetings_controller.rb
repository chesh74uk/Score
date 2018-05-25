class MeetingsController < ApplicationController
    
    def index
    end
    
    def new
        @meeting = Meeting.new
    end
    
    def create
        @meeting = Meeting.create(meeting_params)
        if @meeting.save
            flash[:success] = "Meeting created"
            redirect_to @meeting
        else
            flash[:alert] = "Try again!"
            render :new
        end
    end
    
    def show
       @meeting = Meeting.find(params[:id]) 
    end
    
    private
    
    def meeting_params
        params.require(:meeting).permit(:meeting_date, :home_team, :away_team)
    end
    
end
