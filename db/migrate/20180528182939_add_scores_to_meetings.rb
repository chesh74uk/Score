class AddScoresToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :home_score, :integer
    add_column :meetings, :away_score, :integer
  end
end
