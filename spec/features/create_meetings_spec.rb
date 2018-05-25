require 'rails_helper'

feature "Create meetings" do
    scenario "can create a meeting" do
        visit '/'
        click_link 'New meeting'
        fill_in 'Home team', with: 'Belle Vue'
        fill_in 'Away team', with: 'Kings Lynn'
        click_button 'Create Meeting'
        expect(page).to have_content('Belle Vue')
    end

end