class HomeRidersController < ApplicationController
  
  def index
    @riders = HomeRider.all
  end
end
