# == Schema Information
#
# Table name: shoppings
#
#  id               :integer          not null, primary key
#  store_name       :string           not null
#  list             :text             not null
#  expected_expense :decimal(, )      not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Shopping < ApplicationRecord
    validates :store_name, :list, :expected_expense, presence: true
end
