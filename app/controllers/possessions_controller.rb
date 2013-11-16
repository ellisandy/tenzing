class PossessionsController < ApplicationController
  # GET /possessions
  # GET /possessions.json
  def index
    @possessions = current_user.possessions

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @possessions }
    end
  end

  # GET /possessions/1
  # GET /possessions/1.json
  def show
    @possession = Possession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @possession }
    end
  end

  # GET /possessions/new
  # GET /possessions/new.json
  def new
    @possession = Possession.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @possession }
    end
  end

  # GET /possessions/1/edit
  def edit
    @possession = Possession.find(params[:id])
  end

  # POST /possessions
  # POST /possessions.json
  def create
    @possession = current_user.possessions.new(params[:possession])

    respond_to do |format|
      if @possession.save
        format.html { redirect_to @possession, notice: 'Possession was successfully created.' }
        format.json { render json: @possession, status: :created, location: @possession }
      else
        format.html { render action: "new" }
        format.json { render json: @possession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /possessions/1
  # PUT /possessions/1.json
  def update
    @possession = Possession.find(params[:id])

    respond_to do |format|
      if @possession.update_attributes(params[:possession])
        format.html { redirect_to @possession, notice: 'Possession was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @possession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /possessions/1
  # DELETE /possessions/1.json
  def destroy
    @possession = Possession.find(params[:id])
    @possession.destroy

    respond_to do |format|
      format.html { redirect_to possessions_url }
      format.json { head :no_content }
    end
  end
end
