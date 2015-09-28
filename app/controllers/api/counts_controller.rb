class API::CountsController < ApplicationController
  before_filter :login_required, :except => [:index]
  def index
    @user = User.where(:api_key => params[:api_key])
    render json: 
      "smokes:  #{@user.first.smoke_breaks.total_on(DateTime.now.in_time_zone("Pacific Time (US & Canada)"))} \n"+
      "coffees: #{@user.first.coffee_intakes.total_on(DateTime.now.in_time_zone("Pacific Time (US & Canada)"))} \n"+
      "drinks:  #{@user.first.drink_intakes.total_on(DateTime.now.in_time_zone("Pacific Time (US & Canada)"))}"
  else
    return false
  end
end
