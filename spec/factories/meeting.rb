FactoryBot.define do
    factory :meeting do
        meeting_date {Date.today}
        home_team "Belle Vue"
        away_team "Leicester"
    end
end