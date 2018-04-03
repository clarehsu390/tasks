# == Schema Information
#
# Table name: shoppings
#
#  id               :integer          not null, primary key
#  store_name       :string           not null
#  list             :text             not null
#  expected_expense :decimal(, )      not null
#  due_at           :datetime         not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Shopping < ApplicationRecord
    validates :store_name, :list, :expected_expense, :due_at, presence: true
end
