class CreateHallApplications < ActiveRecord::Migration
  def change
    create_table :hall_applications, id: false do |t|
      t.belongs_to :hall
      t.belongs_to :application

      t.timestamps
    end
  end
end
