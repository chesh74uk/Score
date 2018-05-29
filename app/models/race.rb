class Race < ApplicationRecord
  belongs_to :meeting
  validates :meeting_id, :heat_number, :blue_score, :red_score, :white_score, :yellow_score, :heat_time, presence: true
  validates :blue_score, :red_score, :white_score, :yellow_score, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 3}
  validates :heat_number, numericality: {less_than_or_equal_to: 15}
end
