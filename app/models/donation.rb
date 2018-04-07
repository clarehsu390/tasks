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

class Donation < ApplicationRecord
    validates :address, :vehicle_size, :receipt_needed?, presence: true
    validates :receipt_needed?, inclusion: { in: [true, false]}
    validates :vehicle_size, inclusion: { in: ['bike', 'car', 'truck']}
end
