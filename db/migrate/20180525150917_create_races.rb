class CreateRaces < ActiveRecord::Migration[5.2]
  def change
    create_table :races do |t|
      t.float :heat_time
      t.string :blue_score
      t.string :red_score
      t.string :white_score
      t.string :yellow_score
      t.integer :heat_number
      t.references :meeting, foreign_key: true

      t.timestamps
    end
  end
end
