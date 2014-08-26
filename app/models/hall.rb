class Hall < ActiveRecord::Base
  has_many :hall_assignments
  has_many :users, through: :hall_assignments

  validates :number_of_rooms, presence: true
end
