class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, length: { minimum: 6 }

  after_validation :setup_default_name, on: :create

  private

  def setup_default_name
    self.name = 'John Doe'
  end
end
