class CreateHomeRiders < ActiveRecord::Migration[5.2]
  def change
    create_table :home_riders do |t|
      t.references :meeting, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
