class PredmetsController < ApplicationController
  # GET /predmets
  # GET /predmets.json
  def index
    @predmets = Predmet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @predmets }
    end
  end

  # GET /predmets/1
  # GET /predmets/1.json
  def show
    @predmet = Predmet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @predmet }
    end
  end

  # GET /predmets/new
  # GET /predmets/new.json
  def new
    @predmet = Predmet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @predmet }
    end
  end

  # GET /predmets/1/edit
  def edit
    @predmet = Predmet.find(params[:id])
  end

  # POST /predmets
  # POST /predmets.json
  def create
    @predmet = Predmet.new(params[:predmet])

    respond_to do |format|
      if @predmet.save
        format.html { redirect_to @predmet, notice: 'Predmet was successfully created.' }
        format.json { render json: @predmet, status: :created, location: @predmet }
      else
        format.html { render action: "new" }
        format.json { render json: @predmet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /predmets/1
  # PUT /predmets/1.json
  def update
    @predmet = Predmet.find(params[:id])

    respond_to do |format|
      if @predmet.update_attributes(params[:predmet])
        format.html { redirect_to @predmet, notice: 'Predmet was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @predmet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /predmets/1
  # DELETE /predmets/1.json
  def destroy
    @predmet = Predmet.find(params[:id])
    @predmet.destroy

    respond_to do |format|
      format.html { redirect_to predmets_url }
      format.json { head :ok }
    end
  end
end
