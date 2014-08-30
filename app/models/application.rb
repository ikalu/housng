class Application < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :student_statuses
  has_many :hall_applications
  has_many :halls, through: :hall_applications

  validates :acknowledgement, acceptance: true
end
