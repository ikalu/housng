class CreateApplicationStudentStatusOptions < ActiveRecord::Migration
  def change
    create_table :application_student_status_options, id: false do |t|
      t.belongs_to :application
      t.belongs_to :student_status
    end
  end
end
