require 'rails_helper'

feature "Displays a list of meetings" do
    scenario "the index displays a list of meetings" do
        meeting_one = create(:meeting, meeting_date: "23/05/2018", home_team: "Belle Vue", away_team: "Swindon")
        meeting_two = create(:meeting, meeting_date: "07/06/2018", home_team: "Kings Lynn", away_team: "Poole")
        visit '/'
        expect(page).to have_content("Belle Vue")
        expect(page).to have_content("Poole")
    end
end