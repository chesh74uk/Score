class Meeting < ApplicationRecord
    validates :home_team, :away_team, presence: true
end
