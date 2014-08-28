class ChangeDateOfBirthForApplications < ActiveRecord::Migration
  def change
      remove_column :applications, :date_of_birth, :string

      add_column :applications, :date_of_birth, :date
  end
end
