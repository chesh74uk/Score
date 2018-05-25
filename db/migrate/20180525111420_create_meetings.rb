class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.date :meeting_date
      t.string :home_team
      t.string :away_team

      t.timestamps
    end
  end
end
