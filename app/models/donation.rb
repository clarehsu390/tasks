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

class Donation < ApplicationRecord
    validates :address, :vehicle_size, :address, :receipt_needed?, presence: true
    validates :receipt_needed?, inclusion: { in: [true, false]}
    validates :vehicle_size, inclusion: { in: ['bike', 'car', 'truck']}
end
