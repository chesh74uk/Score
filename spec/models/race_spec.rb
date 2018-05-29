require 'rails_helper'

    

describe Race do
    
    before(:each) do
        @race = create(:race)
    end
    
    it "has a valid factory" do
        expect(@race).to be_valid
    end
    
    it "is invalid with a missing score" do
        @race.blue_score = nil
        expect(@race).to_not be_valid
    end
    
    it "is invalid without a heat time" do
        @race.heat_time = nil
        expect(@race).to_not be_valid
    end
    
    it "is invalid with a score greater than 3" do
        @race.white_score = 4
        expect(@race).to_not be_valid
    end
    
    it "is invalid with a score less than 0" do
        @race.red_score = -1
        expect(@race).to_not be_valid
    end
    
    it "is invalid without a heat number" do
        @race.heat_number = nil
        expect(@race).to_not be_valid
    end
    
    it "is invalid with a heat number greater than 15" do
        @race.heat_number = 16
        expect(@race).to_not be_valid
    end
    
    describe "Associations" do
        it { should belong_to(:meeting)}
    end
    

    
    
end