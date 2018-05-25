class Meeting < ApplicationRecord
    validates :home_team, :away_team, presence: true
    has_many :races, dependent: :destroy
end
