class Hall < ActiveRecord::Base
  has_many :hall_assignments
  has_many :users, through: :hall_assignments
  has_many :hall_applications
  has_many :applications, through: :hall_applications

  validates :number_of_rooms, presence: true
end
