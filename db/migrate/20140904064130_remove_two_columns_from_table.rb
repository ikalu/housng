class RemoveTwoColumnsFromTable < ActiveRecord::Migration
  def change
    remove_column :applications, :approve, :boolean
    remove_column :applications, :decline, :boolean

    add_column :applications, :status, :string, default: "pending"
  end
end
