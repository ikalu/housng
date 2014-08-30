class RemoveColumnFromTable < ActiveRecord::Migration
  def change
    remove_column :applications, :pending, :boolean
  end
end
