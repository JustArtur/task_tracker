class Task < ApplicationRecord
  validates :tittle, presence: true
  belongs_to :project
end
