class QueencellsController < ApplicationController
  # GET /queencells
  # GET /queencells.json
  def index
    @queencells = Queencell.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @queencells }
    end
  end

  # GET /queencells/1
  # GET /queencells/1.json
  def show
    @queencell = Queencell.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @queencell }
    end
  end

  # GET /queencells/new
  # GET /queencells/new.json
  def new
    @queencell = Queencell.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @queencell }
    end
  end

  # GET /queencells/1/edit
  def edit
    @queencell = Queencell.find(params[:id])
  end

  # POST /queencells
  # POST /queencells.json
  def create
    @queencell = Queencell.new(params[:queencell])

    respond_to do |format|
      if @queencell.save
        format.html { redirect_to @queencell, notice: 'Queencell was successfully created.' }
        format.json { render json: @queencell, status: :created, location: @queencell }
      else
        format.html { render action: "new" }
        format.json { render json: @queencell.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /queencells/1
  # PUT /queencells/1.json
  def update
    @queencell = Queencell.find(params[:id])

    respond_to do |format|
      if @queencell.update_attributes(params[:queencell])
        format.html { redirect_to @queencell, notice: 'Queencell was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @queencell.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /queencells/1
  # DELETE /queencells/1.json
  def destroy
    @queencell = Queencell.find(params[:id])
    @queencell.destroy

    respond_to do |format|
      format.html { redirect_to queencells_url }
      format.json { head :no_content }
    end
  end
end
