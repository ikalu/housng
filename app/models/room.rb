class Room < ActiveRecord::Base
  belongs_to :hall
  belongs_to :user
end
