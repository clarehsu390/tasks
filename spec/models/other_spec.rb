# == Schema Information
#
# Table name: others
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  due_at      :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

describe Other do
  it "should validate presence of title" do
    other = Other.new
    other.should_not be_valid
    other.errors[:title].should == ["can't be blank"]
  end

  it "should validate presence of description" do
    other = Other.new
    other.should_not be_valid
    other.errors[:description].should == ["can't be blank"]
  end
end
