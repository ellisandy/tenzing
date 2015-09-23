class API::DrinksController < ApplicationController
  before_filter :login_required, :except => [:new, :create]
  def index
    @smokes = DrinkIntake.all.count
    respond_to do |format|
      format.json {render :json => @smokes }
    end
  end

  def new
    @user = User.where(:api_key => params[:api_key])
    unless @user.empty?
      @smoke_break = DrinkIntake.create( :user_id => @user.first.id, :recorded_time => DateTime.now )
      render json: 
        "smokes:  #{@user.first.smoke_breaks.total_on(DateTime.now.in_time_zone("Pacific Time (US & Canada)"))} \n"+
        "coffees: #{@user.first.coffee_intakes.total_on(DateTime.now.in_time_zone("Pacific Time (US & Canada)"))} \n"+
        "drinks:  #{@user.first.drink_intakes.total_on(DateTime.now.in_time_zone("Pacific Time (US & Canada)"))}"
    else
      return false
    end
  end
  def create
    @user = User.where(:api_key => params[:api_key])
    unless @user.empty?
      @smoke_break = DrinkIntake.create( :user_id => @user.first.id, :recorded_time => DateTime.now )
      render json: 
        "smokes:  #{@user.first.smoke_breaks.total_on(DateTime.now.in_time_zone("Pacific Time (US & Canada)"))} \n"+
        "coffees: #{@user.first.coffee_intakes.total_on(DateTime.now.in_time_zone("Pacific Time (US & Canada)"))} \n"+
        "drinks:  #{@user.first.drink_intakes.total_on(DateTime.now.in_time_zone("Pacific Time (US & Canada)"))}"
    else
      return false
    end
  end
end
