# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  title       :string
#  due_at      :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#

class Task < ApplicationRecord
  validates :title, presence: true
  validates :due_at, presence: true
  validates :category, presence: true
  
  belongs_to :category,
  primary_key: :id,
  foreign_key: :category_id,
  class_name: :Category
end
