class API::SmokesController < ApplicationController
  def index
    @smokes = SmokeBreak.all.count
    respond_to do |format|
      format.json {render :json => @smokes }
    end
  end
  def new
    @user = User.where(:api_key => params[:api_key])
    unless @user.empty?
      @smoke_break = SmokeBreak.create( :user_id => @user.first.id, :recorded_time => DateTime.now )
      redirect_to root_path, :notice => "You have smoked #{current_user.smoke_breaks.total_on(DateTime.now.in_time_zone("Pacific Time (US & Canada)"))} times today."
    else
      return false
    end
  end
  def create
    @user = User.where(:api_key => params[:api_key])
    unless @user.empty?
      @smoke_break = SmokeBreak.create( :user_id => @user.first.id, :recorded_time => DateTime.now )
      redirect_to root_path, :notice => "You have smoked #{current_user.smoke_breaks.total_on(DateTime.now.in_time_zone("Pacific Time (US & Canada)"))} times today."
    else
      return false
    end
  end
end
