class RacesController < ApplicationController
    
    def new
        @race = Race.new(:meeting_id => params[:meeting_id])
        heat = Race.last
        @race.heat_number = heat.heat_number + 1
    end
    
    def show
        @race = Race.find(params[:id])
    end
    
    def edit
        @race = Race.find(params[:id])
    end
    
    def update
        @race = Race.find(params[:id])
        @race.update(races_params)
        redirect_to(meeting_path(@race.meeting_id))
    end
    
    def destroy
      @race = Race.find(params[:id])
      meeting_id = @race.meeting_id
      @race.destroy
      redirect_to(meeting_path(@race.meeting_id))
    end
    
    def create
        
        @race = Race.create(races_params)
        if @race.save
            flash[:success] = "Race created"
            redirect_to (meeting_path(@race.meeting_id))
        else
            flash[:alert] = "Try again!"
            render :new
        end
    end
    
    private
    def races_params
        params.require(:race).permit(:heat_time, :blue_score, :red_score, :white_score, :yellow_score, :heat_number, :meeting_id)
    end
end
