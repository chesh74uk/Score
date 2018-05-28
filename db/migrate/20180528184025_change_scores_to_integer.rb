class ChangeScoresToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :races, :blue_score, 'integer USING CAST(blue_score AS integer)'
    change_column :races, :red_score, 'integer USING CAST(red_score AS integer)'
    change_column :races, :white_score, 'integer USING CAST(white_score AS integer)'
    change_column :races, :yellow_score, 'integer USING CAST(yellow_score AS integer)'
  end
end
