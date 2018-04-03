# == Schema Information
#
# Table name: donations
#
#  id              :integer          not null, primary key
#  vehicle_size    :integer
#  address         :string
#  receipt_needed? :boolean
#  due_at          :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryBot.define do
  factory :donation do
    
  end
end
