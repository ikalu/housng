class HallAssignment < ActiveRecord::Base
  belongs_to :user
  belongs_to :hall
end
