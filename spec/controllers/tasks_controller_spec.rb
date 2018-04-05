require 'rails_helper'

RSpec.describe TasksController, type: :controller do
    it "creates a new shopping task item" do
        shopping = Shopping.new(store_name: "Target", list: "toilet paper, shampoo", expected_expense: 10.00)
        task = Task.new(title: "Target run", due_at: 30.minutes.from_now, addition_info: shopping, category_id: 1)
        task.should be_valid
    end

    it "addition_info should be an object" do
        shopping = Shopping.new(store_name: "Target", list: "toilet paper, shampoo", expected_expense: 10.00)
        task = Task.new(title: "Target run", due_at: 30.minutes.from_now, addition_info: shopping, category_id: 1)
        task[:addition_info].class.should == Hash
    end

    it "should create the right task item" do
        donation = Donation.new(vehicle_size: "car", address: "825 Battery St", receipt_needed?: true)
        task = Task.new(title: "Donation Pickup", due_at: 20.minutes.from_now, addition_info: donation, category_id: 2)
        p task
        task[:addition_info]["vehicle_size"].should == 'car'
    end
end