class SerialsController < ApplicationController
  # GET /serials#index
  # GET /serials.json
 
def index
 
    
  if params[:tag]
    @serials = Serial.tagged_with(params[:tag])
  else
   
    if params[:title]
      @serials = Serial.search(params[:title])
    else
    @serials = Serial.all
    end
  end

     respond_to do |format|
     format.html # index.html.erb
     format.json { render json: @serials }
    end
end

  # GET /serials/1
  # GET /serials/1.json
  def show
    @serial = Serial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @serial }
    end
  end

  # GET /serials/new
  # GET /serials/new.json
  def new
    @serial = Serial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @serial }
    end
  end
 def crop
    @serial = Serial.find(params[:id])
  end
  # GET /serials/1/edit
  def edit
    @serial = Serial.find(params[:id])
  end

  # POST /serials
  # POST /serials.json
  def create
    @serial = Serial.new(params[:serial])

    respond_to do |format|
      if @serial.save
        format.html { redirect_to @serial, notice: 'Serial was successfully created.' }
        format.json { render json: @serial, status: :created, location: @serial }
      else
        format.html { render action: "new" }
        format.json { render json: @serial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /serials/1
  # PUT /serials/1.json
  def update
    @serial = Serial.find(params[:id])

    respond_to do |format|
      if @serial.update_attributes(params[:serial])
        format.html { redirect_to @serial, notice: 'Serial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @serial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serials/1
  # DELETE /serials/1.json
  def destroy
    @serial = Serial.find(params[:id])
    @serial.destroy

    respond_to do |format|
      format.html { redirect_to serials_url }
      format.json { head :no_content }
    end
  end
end
