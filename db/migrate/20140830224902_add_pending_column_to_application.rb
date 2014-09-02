class AddPendingColumnToApplication < ActiveRecord::Migration
  def change
    add_column :applications, :approve, :boolean, default: false
    add_column :applications, :decline, :boolean, default: false
    add_column :applications, :pending, :boolean, default: true

    add_index :applications, :approve
    add_index :applications, :decline
    add_index :applications, :pending
  end
end
