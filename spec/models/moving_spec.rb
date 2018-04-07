# == Schema Information
#
# Table name: movings
#
#  id            :integer          not null, primary key
#  num_of_people :integer
#  address       :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

describe Moving do
  it "should validate presence of number of people" do
    moving = Moving.new
    moving.should_not be_valid
    moving.errors[:num_of_people].should == ["can't be blank"]
  end

  it "should validate presence of address" do
    moving = Moving.new
    moving.should_not be_valid
    moving.errors[:address].should == ["can't be blank"]
  end
end
