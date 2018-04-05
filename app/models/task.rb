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
  serialize :addition_info, JSON
  validates :title, presence: true
  validates :due_at, presence: true
  validates :category_id, presence: true
  validates :addition_info, presence: true
end
