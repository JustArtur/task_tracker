class Project < ApplicationRecord
  validates :tittle, presence: true
  has_and_belongs_to_many :tasks
  has_and_belongs_to_many :users
end
