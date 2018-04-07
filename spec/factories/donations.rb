# == Schema Information
#
# Table name: donations
#
#  id              :integer          not null, primary key
#  vehicle_size    :string
#  address         :string
#  receipt_needed? :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryBot.define do
  factory :donation do
    
  end
end
