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

require 'rails_helper'

describe Donation do
  it "should validate presence of address" do
    donation = Donation.new
    donation.should_not be_valid
    donation.errors[:address].should == ["can't be blank"]
  end

  it "should validate presence of receipt_needed?" do
    donation = Donation.new
    donation.should_not be_valid
    donation.errors[:receipt_needed?].include?("is not included in the list")
  end

  it "should validate presence of vehicle_size" do
    donation = Donation.new
    donation.should_not be_valid
    donation.errors[:vehicle_size].include?("is not included in the list")
  end

  it "should include right vehicle_size" do
    donation = Donation.new(vehicle_size: "car", address: "825 Battery Street", receipt_needed?: true)
    donation.should be_valid
  end
end

