# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  title       :string
#  due_at      :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#

require 'rails_helper'

describe Task do
  it "should validate presence of title" do
    task = Task.new
    task.should_not be_valid
    task.errors[:title].should == ["can't be blank"]
  end

  it "should validate presence of due_at" do
    task = Task.new
    task.should_not be_valid
    task.errors[:due_at].should == ["can't be blank"]
  end

  it "should be able to create a new Task" do
    task = Task.new(title: "Pickup my groceries", due_at: 30.minutes.from_now)
    task.save.should == true
    task.should_not be_new_record
  end
end
