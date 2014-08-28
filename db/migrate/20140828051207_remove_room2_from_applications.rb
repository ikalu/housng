class RemoveRoom2FromApplications < ActiveRecord::Migration
  def change
    remove_column :applications, :room2, :string
    remove_column :applications, :room1, :string
    remove_column :applications, :room3, :string
  end
end
