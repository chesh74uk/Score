require 'rails_helper'

RSpec.describe Meeting, type: :model do
    it "is valid with valid attributes" do
        meeting = Meeting.new
        meeting.home_team = 'Belle Vue'
        meeting.away_team = 'Kings Lynn'
        meeting.meeting_date = '23/05/2018'
        expect(meeting).to be_valid
    end
    
    it "is not valid without a home team" do
        meeting = Meeting.new
        meeting.home_team = nil
        expect(meeting).to_not be_valid
    end
    
    it "is not valid without an away team" do
        meeting = Meeting.new
        meeting.away_team = nil
        expect(meeting).to_not be_valid
    end
        
end
