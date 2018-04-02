class Shopping < ApplicationRecord
    validates :store_name, :list, :expected_expense, presence: true
end
