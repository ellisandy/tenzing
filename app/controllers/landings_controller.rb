class LandingsController < ApplicationController
  def index
    @smoke_break = SmokeBreak.new
    @smoke_break_chart = current_user.smoke_breaks
    @last_five_smoke_breaks = SmokeBreak.last(5)
    @groceries = Grocery.all
  end
end
