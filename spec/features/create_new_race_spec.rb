require 'rails_helper'

feature "Can create a race" do
    scenario "visit the page and add a race" do
        visit 'races/new'
    end
end