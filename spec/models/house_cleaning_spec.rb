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

describe HouseCleaning do
  it "should validate presence of address" do
    house_cleaning = HouseCleaning.new
    house_cleaning.should_not be_valid
    house_cleaning.errors[:address].should == ["can't be blank"]
  end

  it "should validate presence of number of bathrooms" do
    house_cleaning = HouseCleaning.new
    house_cleaning.should_not be_valid
    house_cleaning.errors[:num_of_bathrooms].should == ["can't be blank"]
  end

  it "should validate presence of type of cleaning" do
    house_cleaning = HouseCleaning.new
    house_cleaning.should_not be_valid
    house_cleaning.errors[:type_of_cleaning].include?(
      "can't be blank")
  end

  it "should validate the right type of cleaning" do
    house_cleaning = HouseCleaning.new(address: "825 Battery St", num_of_bathrooms: 3, type_of_cleaning: "normal")
    house_cleaning.should be_valid
  end
end
