# == Schema Information
#
# Table name: shoppings
#
#  id               :integer          not null, primary key
#  store_name       :string           not null
#  list             :text             not null
#  expected_expense :decimal(, )      not null
#  due_at           :datetime         not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'rails_helper'

describe Shopping do
  it "should validate presence of store_name" do
    shopping = Shopping.new
    shopping.should_not be_valid
    shopping.errors[:store_name].should == ["can't be blank"]
  end

  it "should validate presence of list" do
    shopping = Shopping.new
    shopping.should_not be_valid
    shopping.errors[:list].should == ["can't be blank"]
  end

  it "should validate presence of due_at" do
    shopping = Shopping.new
    shopping.should_not be_valid
    shopping.errors[:due_at].should == ["can't be blank"]
  end

  it "should validate presence of expected expense" do
    shopping = Shopping.new
    shopping.should_not be_valid
    shopping.errors[:expected_expense] == ["can't be blank"]
  end

  it "should check if expected expense is a decimal" do
    shopping = Shopping.new(store_name: "Target", list: "toilet paper, shampoo", expected_expense: 10.00, due_at: 30.minutes.from_now)
    expect(shopping[:expected_expense]).to be_kind_of(Numeric)
  end
end