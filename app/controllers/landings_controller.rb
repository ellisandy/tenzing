class LandingsController < ApplicationController
  def index
    @smoke_break_chart = current_user.smoke_breaks
    @drink_break_chart = current_user.drink_intakes
    @coffee_break_chart = current_user.coffee_intakes
    @last_five_smoke_breaks = current_user.smoke_breaks.last(5).reverse    
    @last_five_coffee_breaks = current_user.coffee_intakes.last(5).reverse
    @last_five_drinks = current_user.drink_intakes.last(5).reverse

		@time = 1.weeks.ago.midnight
	  @smoke_break_array = []
		@smoke_break_group = SmokeBreak.group_by_hour(:created_at, time_zone: "Pacific Time (US & Canada)", range: @time..Time.now).count 
		@smoke_break_group.map { |k, v| @smoke_break_array.push(v)}
    @smoke_breaks_hash = { :time => @time, :smoke_array => @smoke_break_array }
    
	  @drink_intake_array = []
		@drink_intake_group = DrinkIntake.group_by_hour(:created_at, time_zone: "Pacific Time (US & Canada)", range: @time..Time.now).count 
		@drink_intake_group.map { |k, v| @drink_intake_array.push(v)}
    @drink_intake_hash = { :time => @time, :drink_array => @drink_intake_array }
    
	  @coffee_intake_array = []
		@coffee_intake_group = CoffeeIntake.group_by_hour(:created_at, time_zone: "Pacific Time (US & Canada)", range: @time..Time.now).count 
		@coffee_intake_group.map { |k, v| @coffee_intake_array.push(v)}
    @coffee_intake_hash = { :time => @time, :coffee_array => @coffee_intake_array }
  end
end
