class DrinkIntakesController < ApplicationController

  def index
    # @drink_intakess = DrinkIntake.all
    @drink_intakes = current_user.drink_intakes.all
  end

  def show
    @drink_intake = DrinkIntake.find(params[:id])
  end

  def new
    @drink_intake = current_user.drink_intakes.new
  end

  # GET /drink_intakess/1/edit
  def edit
    @drink_intake = DrinkIntake.find(params[:id])
  end

  def create
    @drink_intake = current_user.drink_intakess.new(params[:drink_intakes])

    if @drink_intake.save
      redirect_to @drink_intake, notice: 'Drink intake was successfully created.'
    else
      render action: "new" 
    end
  end

  def update
    @drink_intake = DrinkIntake.find(params[:id])

    if @drink_intake.update_attributes(params[:drink_intakes])
      redirect_to @drink_intake, notice: 'Drink intake was successfully updated.' 
    else
      render action: "edit"
    end
  end

  def destroy
    @drink_intake = DrinkIntake.find(params[:id])
    @drink_intake.destroy

    redirect_to drink_intakes_url
  end

  def quick_drink
    @drink_intake = DrinkIntake.create( :user_id => current_user.id, :recorded_time => DateTime.now )
    redirect_to root_path, :notice => "You have had #{DrinkIntake.total_on(DateTime.now.in_time_zone("Pacific Time (US & Canada)"))} drinks today."
  end

end
