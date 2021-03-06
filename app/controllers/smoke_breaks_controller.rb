class SmokeBreaksController < ApplicationController
  def index
    @smoke_breaks = current_user.smoke_breaks.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @smoke_breaks }
    end
  end

  def create
    @smoke_break = current_user.smoke_breaks.new(params[:smoke_break])
    if @smoke_break.save
      redirect_to root_path, :notice => "Smoke break recorded"
    else
      render :action => 'new'
    end
  end

  def destroy
    @smoke_break = SmokeBreak.find(params[:id])
    @smoke_break.destroy
    redirect_to smoke_breaks_url, :notice => "Successfully destroyed smoke breaks."
  end

  def update
    @smoke_break = SmokeBreak.find(params[:id])
    if @smoke_break.update_attributes(params[:smoke_break])
      redirect_to smoke_breaks_url, :notice  => "Successfully updated smoke breaks."
    else
      render :action => 'edit'
    end
  end

  def edit
    @smoke_break = SmokeBreak.find(params[:id])
  end

  def new
    @smoke_break = current_user.smoke_breaks.new
  end

  def quick_smoke
    @smoke_break = SmokeBreak.create( :user_id => current_user.id, :recorded_time => DateTime.now )
    redirect_to root_path, :notice => "You have smoked #{current_user.smoke_breaks.total_on(DateTime.now.in_time_zone("Pacific Time (US & Canada)"))} times today."
  end
end
