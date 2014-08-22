class CreateManagements < ActiveRecord::Migration
  def change
    create_table :managements do |t|
      t.belongs_to :user
      t.belongs_to :hall

      t.timestamps
    end
  end
end
