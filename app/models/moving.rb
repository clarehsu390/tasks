# == Schema Information
#
# Table name: movings
#
#  id            :integer          not null, primary key
#  num_of_people :integer
#  address       :string
#  due_at        :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Moving < ApplicationRecord
    validates :num_of_people, :address, :due_at, presence: true
end
