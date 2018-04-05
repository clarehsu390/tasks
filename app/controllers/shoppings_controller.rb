class ShoppingsController < ApplicationController
    def index
        @shoppings = Shopping.all
    end

    def show
        @shopping = Shopping.find(params[:id])
    end


    private

    def shopping_params
        params.require(:shopping).permit(:store_name, :list, :expected_expense, :due_at)
    end
end
