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

require 'rails_helper'

RSpec.describe Moving, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
