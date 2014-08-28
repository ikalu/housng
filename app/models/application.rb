class Application < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :studentstatuses
  has_and_belongs_to_many :halls

  validates :acknowledgement, acceptance: true
end
