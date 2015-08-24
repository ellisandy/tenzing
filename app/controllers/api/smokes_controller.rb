class API::SmokesController < ApplicationController
  before_filter :login_required, :except => [:new, :create, :index]
  def index
    @user = User.where(:api_key => params[:api_key])
    
    @date_range = (2.weeks.ago.to_datetime..DateTime.now.end_of_day).map{ |date| date }
    @coffee_data = []
    @drinks_data = []
    @smoke_data = []
    
    @date_range.each do | date |
      smokes = SmokeBreak.find(:all, :conditions => {:recorded_time => date.in_time_zone("Pacific Time (US & Canada)").beginning_of_day..date.in_time_zone("Pacific Time (US & Canada)").end_of_day, :user_id => @user.first}).count
      @smoke_data.push({"title" => date, "value" => smokes})
      
      coffee = CoffeeIntake.find(:all, :conditions => {:recorded_time => date.in_time_zone("Pacific Time (US & Canada)").beginning_of_day..date.in_time_zone("Pacific Time (US & Canada)").end_of_day, :user_id => @user.first}).count
      @coffee_data.push({"title" => date, "value" => coffee})
      
      drinks = DrinkIntake.find(:all, :conditions => {:recorded_time => date.in_time_zone("Pacific Time (US & Canada)").beginning_of_day..date.in_time_zone("Pacific Time (US & Canada)").end_of_day, :user_id => @user.first}).count
      @drinks_data.push({"title" => date, "value" => drinks})
    end
    
    @graph = { 
      "graph" => { 
        "title" => "Consumption per Day",
        "type" => "line", 
        "datasequences" => [ 
          {
            "title" => "Smokes",
            "color" => "red",
            "datapoints" => @smoke_data
          },
          {
            "title" => "Coffees",
            "color" => "blue",
            "datapoints" => @coffee_data
          },
          {
            "title" => "Drinks",
            "color" => "green",
            "datapoints" => @drinks_data
          }
        ]
      } 
    }
    respond_to do |format|
      format.json {render :json => @graph }
    end
  end

  def new
    @user = User.where(:api_key => params[:api_key])
    unless @user.empty?
      @smoke_break = SmokeBreak.create( :user_id => @user.first.id, :recorded_time => DateTime.now )
      render json: @user.first.smoke_breaks.total_on(DateTime.now.in_time_zone("Pacific Time (US & Canada)"))
    else
      return false
    end
  end
  def create
    @user = User.where(:api_key => params[:api_key])
    unless @user.empty?
      @smoke_break = SmokeBreak.create( :user_id => @user.first.id, :recorded_time => DateTime.now )
      render json: @user.first.smoke_breaks.total_on(DateTime.now.in_time_zone("Pacific Time (US & Canada)"))
    else
      return false
    end
  end
end
