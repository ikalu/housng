class User < ActiveRecord::Base
  validates(
    :email,
    presence: true,
    uniqueness: true,
    format: { with: /\A.+@claflin\.edu\z/i }
  )
  before_save :downcase_data


  validates :password_digest, presence: true


  private
  def downcase_data
    self.email = email.downcase
  end
end
