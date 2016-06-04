class LandingPagesController < ApplicationController

  def landing
    create_category_stats
    render layout: "guest_pages/guest_layout"
  end
end

def create_category_stats
  categories = Violation.pluck(:category).uniq
  @category_stats = []
  categories.each do |category|
    category_violations = Violation.where(category: category).order(:violation_date)
    stat = {category: category, count: category_violations.count, earliest: category_violations.first.violation_date, latest: category_violations.last.violation_date }
    @category_stats << stat
  end
end
