class CreateAwayRiders < ActiveRecord::Migration[5.2]
  def change
    create_table :away_riders do |t|
      t.references :meeting, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
