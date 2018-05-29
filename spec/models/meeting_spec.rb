require 'rails_helper'

RSpec.describe Meeting, type: :model do
    
    before(:all) do
        @meeting = create(:meeting)
    end
    
    it "has a valid factory" do
        expect(@meeting).to be_valid
    end
    
    it "is valid with valid attributes" do
        expect(@meeting).to be_valid
    end
    
    it "is not valid without a home team" do
        @meeting.home_team = nil
        expect(@meeting).to_not be_valid
    end
    
    it "is not valid without an away team" do
        @meeting.away_team = nil
        expect(@meeting).to_not be_valid
    end
    
    describe "Associations" do
        it {should have_many(:races)}
    end
        
end
