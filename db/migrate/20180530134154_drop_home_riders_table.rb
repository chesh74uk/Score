class DropHomeRidersTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :home_teams
  end
end
