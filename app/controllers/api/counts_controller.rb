class API::CountsController < ApplicationController
  before_filter :login_required, :except => [:index]
  def index
    @user = User.where(:api_key => params[:api_key])
    render json: 
      "smokes:  #{@user.first.smoke_breaks.total_on(DateTime.now.in_time_zone("Pacific Time (US & Canada)"))} (#{@user.smoke_breaks.last.recorded_time.in_time_zone("Pacific Time (US & Canada)").strftime("%B %e - %I:%M%p")})\n"+
      "coffees: #{@user.first.coffee_intakes.total_on(DateTime.now.in_time_zone("Pacific Time (US & Canada)"))} (#{@user.coffee_intakes.last.recorded_time.in_time_zone("Pacific Time (US & Canada)").strftime("%B %e - %I:%M%p")})\n"+
      "drinks:  #{@user.first.drink_intakes.total_on(DateTime.now.in_time_zone("Pacific Time (US & Canada)"))} (#{@user.drink_intakes.last.recorded_time.in_time_zone("Pacific Time (US & Canada)").strftime("%B %e - %I:%M%p")})"
  else
    return false
  end
end
