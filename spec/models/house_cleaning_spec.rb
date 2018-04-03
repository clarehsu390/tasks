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

require 'rails_helper'

RSpec.describe HouseCleaning, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
