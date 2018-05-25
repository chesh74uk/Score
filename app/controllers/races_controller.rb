class RacesController < ApplicationController
    
    def new
        @race = Race.new
    end
    
    def show
        @race = Race.find(params[:id])
    end
    
    def create
        @race = Race.create(races_params)
        if @race.save
            flash[:success] = "Race created"
            redirect_to @race
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
