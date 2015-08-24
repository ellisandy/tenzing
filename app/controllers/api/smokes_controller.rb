class API::SmokesController < ApplicationController
  before_filter :login_required, :except => [:new, :create]
  def index
    @smokes = SmokeBreak.all.count
    
    # @json_format = {
    #   "graph" : {
    #     "title" : "Smokes per Day"
    #     "datasecuences" : [
    #       {
    #         "title": "Smokes",
    #         "datapoints" : [
    #           "title" : "today", "value" : "22",
    #           "title" : "yesterday", "value" : "26",
    #           "title" : "day before", "value" : "23"
    #           ]
    #       }
    #     ]
    #   }
    # }

    @smokes = { 
      "graph" => { 
        "title" => "Smokes per Day",
        "datapoints" => [ 
          {
            "title" => "Smokes",
            "datapoints" => [
              {"title" => "today", "value" => "22"},
              {"title" => "yesterday", "value" => "26"},
              {"title" => "day before", "value" => "23"}
            ]
          }
        ]
      } 
    }
    respond_to do |format|
      format.json {render :json => @smokes }
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
