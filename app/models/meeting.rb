class Meeting < ApplicationRecord
    validates :home_team, :away_team, presence: true
    has_many :races, dependent: :destroy
    has_many :home_riders, dependent: :destroy
    accepts_nested_attributes_for :home_riders
end
