class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: /@/, message: 'email must contain @' }
  validates :first_name, :second_name, presence: true
  validates :password, presence: true, confirmation: true
  validates :password_confirmation, presence: true
end
