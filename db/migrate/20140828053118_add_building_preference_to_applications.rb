class AddBuildingPreferenceToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :building_preference, :text
  end
end
