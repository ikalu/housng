class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :resident_manager, :boolean, default: false
    add_column :users, :resident_assistant, :boolean, default: false
  end
end
