class LandingsController < ApplicationController
  def index
    @smoke_break = SmokeBreak.new
    @smoke_break_chart = current_user.smoke_breaks
  end
end
