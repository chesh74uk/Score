require 'rails_helper'

feature "Create meetings" do
    scenario "can create a meeting" do
        visit '/'
        click_link 'New meeting'
        fill_in 'Home team', with: 'Belle Vue'
        fill_in 'Away team', with: 'Kings Lynn'
        fill_in 'Meeting date', with: '23/05/2018'
        click_button 'Create meeting'
        expect(page).to have_content('Belle Vue')
    end
end