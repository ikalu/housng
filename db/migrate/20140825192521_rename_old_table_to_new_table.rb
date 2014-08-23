class RenameOldTableToNewTable < ActiveRecord::Migration
  def change
    rename_table :managements, :hall_assignments
  end
end
