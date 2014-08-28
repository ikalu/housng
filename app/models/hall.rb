class Hall < ActiveRecord::Base
  has_many :hall_assignments
  has_many :users, through: :hall_assignments
  has_and_belongs_to_many :applications

  validates :number_of_rooms, presence: true
end
