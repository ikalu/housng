class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :academic_year
      t.string :semester
      t.text :home_address
      t.string :home_phone
      t.string :student_id
      t.integer :age
      t.string :date_of_birth
      t.string :gender
      t.string :parent_name
      t.text :parent_address
      t.string :parent_home_telephone
      t.string :parent_work_telephone
      t.text :student_status
      t.string :room1
      t.string :room2
      t.string :room3
      t.boolean :roommate_preference
      t.string :roommate1
      t.string :roommate2
      t.string :roommate3
      t.boolean :any_disability
      t.text :disability_description
      t.boolean :previous_application
      t.references :user, index: true

      t.timestamps
    end
  end
end
