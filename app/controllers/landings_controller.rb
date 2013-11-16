class LandingsController < ApplicationController
  def index
    @smoke_break_chart = current_user.smoke_breaks
    @last_five_smoke_breaks = current_user.smoke_breaks.last(5)
    @groceries = current_user.groceries
  end
end
