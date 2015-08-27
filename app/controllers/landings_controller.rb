class LandingsController < ApplicationController
  def index
    @smoke_break_chart = current_user.smoke_breaks
    @drink_break_chart = current_user.drink_intakes
    @coffee_break_chart = current_user.coffee_intakes
    @last_five_smoke_breaks = current_user.smoke_breaks.last(5).reverse    
    @last_five_coffee_breaks = current_user.coffee_intakes.last(5).reverse
    @last_five_drinks = current_user.drink_intakes.last(5).reverse

	  @array = []
		@time = 2.days.ago.midnight
		@group = SmokeBreak.group_by_hour(:created_at, time_zone: "Pacific Time (US & Canada)", range: @time..Time.now).count 
		@group.map { |k, v| @array.push(v)}
    @smoke_breaks_hash = { :time => @time, :smoke_array => @array }
  end
end
