class User < ActiveRecord::Base
  has_many :hall_assignments
  has_many :halls, through: :hall_assignments
  has_one :application

  validates :password_digest, presence: true
  validate :user_cannot_be_resident_manager_and_resident_assistant
  validates(
    :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A.+@claflin\.edu\z/i }
  )

  default_scope { order("email ASC") }

  before_save :downcase_data

  def staff?
    resident_manager || resident_assistant
  end

  private

  def downcase_data
    self.email = email.downcase
  end

  def user_cannot_be_resident_manager_and_resident_assistant
    if resident_manager && resident_assistant
      errors.add(self.email, "can't be both an assistant AND a manager")
    end
  end
end
