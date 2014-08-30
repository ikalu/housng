class RenameApplicationStudentStatusOptionsToApplicationsStudentStatuses < ActiveRecord::Migration
  def change
    rename_table :application_student_status_options, :applications_student_statuses
  end
end
