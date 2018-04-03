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

require 'rails_helper'

RSpec.describe Shopping, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
