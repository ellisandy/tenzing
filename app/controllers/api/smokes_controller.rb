class API::SmokesController < ApplicationController
  before_filter :login_required, :except => [:new, :create]
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
      render json: SmokeBreak.all.count
    else
      return false
    end
  end
  def create
    @user = User.where(:api_key => params[:api_key])
    unless @user.empty?
      @smoke_break = SmokeBreak.create( :user_id => @user.first.id, :recorded_time => DateTime.now )
      render json: SmokeBreak.all.count
    else
      return false
    end
  end
end
