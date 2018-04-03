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

class Other < ApplicationRecord
end
