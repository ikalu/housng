class HallApplication < ActiveRecord::Base
  belongs_to :application
  belongs_to :hall
end
