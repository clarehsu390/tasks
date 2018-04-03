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

require 'rails_helper'

RSpec.describe Donation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
