class BottomsController < ApplicationController
  # GET /bottoms
  # GET /bottoms.json
  def index
    @bottoms = Bottom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bottoms }
    end
  end

  # GET /bottoms/1
  # GET /bottoms/1.json
  def show
    @bottom = Bottom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bottom }
    end
  end

  # GET /bottoms/new
  # GET /bottoms/new.json
  def new
    @bottom = Bottom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bottom }
    end
  end

  # GET /bottoms/1/edit
  def edit
    @bottom = Bottom.find(params[:id])
  end

  # POST /bottoms
  # POST /bottoms.json
  def create
    @bottom = Bottom.new(params[:bottom])

    respond_to do |format|
      if @bottom.save
        format.html { redirect_to @bottom, notice: 'Bottom was successfully created.' }
        format.json { render json: @bottom, status: :created, location: @bottom }
      else
        format.html { render action: "new" }
        format.json { render json: @bottom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bottoms/1
  # PUT /bottoms/1.json
  def update
    @bottom = Bottom.find(params[:id])

    respond_to do |format|
      if @bottom.update_attributes(params[:bottom])
        format.html { redirect_to @bottom, notice: 'Bottom was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @bottom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bottoms/1
  # DELETE /bottoms/1.json
  def destroy
    @bottom = Bottom.find(params[:id])
    @bottom.destroy

    respond_to do |format|
      format.html { redirect_to bottoms_url }
      format.json { head :ok }
    end
  end
end
