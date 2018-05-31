class CreateHometeams < ActiveRecord::Migration[5.2]
  def change
    create_table :hometeams do |t|
      t.references :meeting, foreign_key: true
      t.string :rider_name

      t.timestamps
    end
  end
end
