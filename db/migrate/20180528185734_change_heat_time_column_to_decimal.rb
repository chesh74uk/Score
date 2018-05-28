class ChangeHeatTimeColumnToDecimal < ActiveRecord::Migration[5.2]
  def change
    change_column :races, :heat_time, :decimal, :precision => 4, :scale => 2, null: false
  end
end
