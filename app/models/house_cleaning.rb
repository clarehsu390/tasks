# == Schema Information
#
# Table name: house_cleanings
#
#  id               :integer          not null, primary key
#  address          :string
#  num_of_bathrooms :integer
#  type_of_cleaning :text
#  due_at           :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class HouseCleaning < ApplicationRecord
    validates :address, :num_of_bathrooms, :type_of_cleaning, presence: true
    validates :type_of_cleaning, inclusion: { in: ['light', 'normal', 'heavy']}
end
