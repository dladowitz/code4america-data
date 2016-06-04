class LandingPagesController < ApplicationController

  def landing
    @category_stats = {}
    find_category_stats
    render layout: "guest_pages/guest_layout"
  end
end

def find_category_stats
  Violation.all.each do |violation|
    if @category_stats[violation.category]
      @category_stats[violation.category] += 1
    else
      @category_stats[violation.category] = 1
    end
  end
end
