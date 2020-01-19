class User < ApplicationRecord
  validates :login, presence: true, length: { maximum: 255 },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  def admin?
    self.role == 'admin'
  end
end