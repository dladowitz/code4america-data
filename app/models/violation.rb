# == Schema Information
#
# Table name: violations
#
#  id                    :integer          not null, primary key
#  inspection_id         :integer
#  category              :string
#  violation_date        :date
#  violation_date_closed :date
#  violation_type        :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Violation < ActiveRecord::Base
  validates :inspection_id, :category, :violation_date, :violation_date_closed, :violation_type, presence: true
end
