class DonationsController < ApplicationController

    def index
        @donation = Donation.all
    end

    private

    def donation_params
        params.reqiure(:donation).permit(:vehicle_size, :address, :receipt_needed?, :due_at)
    end
end
