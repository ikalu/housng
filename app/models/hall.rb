class Hall < ActiveRecord::Base
  has_many :managements
  has_many :users, through: :managements
end
