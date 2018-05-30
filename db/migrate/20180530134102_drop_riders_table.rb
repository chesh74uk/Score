class DropRidersTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :riders
  end
end
