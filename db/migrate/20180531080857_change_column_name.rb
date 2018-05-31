class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :home_riders, :name, :rider_name
  end
end
