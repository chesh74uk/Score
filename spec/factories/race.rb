require 'faker'

FactoryBot.define do
    factory :race do
        heat_number 1
        blue_score 3
        red_score 2
        white_score 1
        yellow_score 0
        meeting_id 1
        heat_time 65.43
    end
end