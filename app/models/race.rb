class Race < ApplicationRecord
  belongs_to :meeting
  validates :meeting_id, :heat_number, presence: true
end
