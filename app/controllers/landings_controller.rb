class LandingsController < ApplicationController
  def index
    @smoke_break = SmokeBreak.new
    @smoke_break_chart = SmokeBreak.all
  end
end
