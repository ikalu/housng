class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :room_number
      t.belongs_to :hall

      t.timestamps
    end
  end
end
