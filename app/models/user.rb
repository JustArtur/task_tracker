class User < ApplicationRecord
  validates :email, :password_digest, presence: true
  has_and_belongs_to_many :projects
end
