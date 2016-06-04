# == Schema Information
#
# Table name: violations
#
#  id                    :integer          not null, primary key
#  inspection_id         :integer
#  category              :string
#  violation_date        :date
#  violation_closed_date :date
#  type                  :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Violation < ActiveRecord::Base
  validates :inspection_id, :category, :violation_date, :violation_closed_date, :type, presence: true
end
