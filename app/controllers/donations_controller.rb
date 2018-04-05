class DonationsController < ApplicationController

    def index
        @donation = Donation.all
    end

    def create
        @donation = Donation.new(donation_params)
        if @donation.save!
            flash[:notice] = "Task has been created."
        else
            flash[:errors]
        end
    end

    private

    def donation_params
        params.reqiure(:donation).permit(:vehicle_size, :address, :receipt_needed?, :due_at)
    end
end
