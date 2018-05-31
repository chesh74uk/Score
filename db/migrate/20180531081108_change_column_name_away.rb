class ChangeColumnNameAway < ActiveRecord::Migration[5.2]
  def change
    rename_column :away_riders, :name, :rider_name
  end
end
