class LandingsController < ApplicationController
  def index
<<<<<<< HEAD
    @smoke_break_chart = current_user.smoke_breaks
    @coffee_break_chart = current_user.coffee_intakes
    @last_five_smoke_breaks = current_user.smoke_breaks.last(5)
    @groceries = current_user.groceries
=======
    @smoke_break = SmokeBreak.new
    @smoke_break_chart = current_user.smoke_breaks
>>>>>>> 8c5f521ce76322f87c0575370a6dec60d4094501
  end
end
