class Hall < ActiveRecord::Base
  has_many :managements
  has_many :users, through: :managements

  validates :number_of_rooms, presence: true
end
