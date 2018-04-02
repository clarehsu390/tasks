class Task < ApplicationRecord
  validates :title, presence: true
  validates :due_at, presence: true

  belongs_to :category
end