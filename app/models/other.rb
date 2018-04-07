# == Schema Information
#
# Table name: others
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Other < ApplicationRecord
    validates :title, :description, presence: true
end
