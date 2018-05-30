class MeetingsController < ApplicationController
    
    def index
        @meetings = Meeting.all
    end
    
    def new
        @meeting = Meeting.new
        7.times {@meeting.home_riders.build}
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
        @meeting.home_score = Race.sum(:blue_score) + Race.sum(:red_score)
        @meeting.away_score = Race.sum(:white_score) + Race.sum(:yellow_score)
    end
    
    def edit
        @meeting = Meeting.find(params[:id])
    end
    
    def update
        @meeting = Meeting.find(params[:id])
        @meeting.update(meeting_params)
        redirect_to(meeting_path(@meeting))
    end
    
    def destroy
      @meeting = Meeting.find(params[:id])
      @meeting.destroy
      redirect_to meetings_path
    end
    
    private
    
    def meeting_params
        params.require(:meeting).permit(:meeting_date, :home_team, :away_team, home_riders_attributes:[:name])
    end
    
end
