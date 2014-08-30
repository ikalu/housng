class RemoveColumnFromApplications < ActiveRecord::Migration
  def change
    remove_column :applications, :student_status, :text
    remove_column :applications, :building_preference, :text

  end
end
