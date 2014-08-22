class CreateHalls < ActiveRecord::Migration
  def change
    create_table :halls do |t|
      t.string :name, null: false
      t.integer :number_of_suites
      t.integer :number_of_rooms, null: false

      t.timestamps null: false
    end

    add_index :halls, :name, unique: true
  end
end
