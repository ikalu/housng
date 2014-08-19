class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true,
    format: { with: /\A([^@\s]+)@((?:claflin+\.)+edu)\z/i }

  validates :password_digest, presence: true
end
