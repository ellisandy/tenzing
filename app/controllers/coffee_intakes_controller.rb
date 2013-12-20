class CoffeeIntakesController < ApplicationController

  def index
    # @coffee_intakes = CoffeeIntake.all
    @coffee_intakes = current_user.coffee_intakes.all
  end

  def show
    @coffee_intake = CoffeeIntake.find(params[:id])
  end

  def new
    @coffee_intake = current_user.coffee_intakes.new
  end

  # GET /coffee_intakes/1/edit
  def edit
    @coffee_intake = CoffeeIntake.find(params[:id])
  end

  def create
    @coffee_intake = current_user.coffee_intakes.new(params[:coffee_intake])

    if @coffee_intake.save
      redirect_to @coffee_intake, notice: 'Coffee intake was successfully created.'
    else
      render action: "new" 
    end
  end

  def update
    @coffee_intake = CoffeeIntake.find(params[:id])

    if @coffee_intake.update_attributes(params[:coffee_intake])
      redirect_to @coffee_intake, notice: 'Coffee intake was successfully updated.' 
    else
      render action: "edit"
    end
  end

  def destroy
    @coffee_intake = CoffeeIntake.find(params[:id])
    @coffee_intake.destroy

    redirect_to coffee_intakes_url
  end

  def quick_coffee
    @coffee_intake = CoffeeIntake.create( :user_id => current_user.id, :recorded_time => DateTime.now )
    redirect_to root_path, :notice => "You have  #{CoffeeIntake.total_on(DateTime.now.in_time_zone("Pacific Time (US & Canada)"))} times today."
  end

end
