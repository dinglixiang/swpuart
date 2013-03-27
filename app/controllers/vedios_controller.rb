class VediosController < ApplicationController
  # GET /vedios
  # GET /vedios.json
  def index
    @vedios = Vedio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vedios }
    end
  end

  # GET /vedios/1
  # GET /vedios/1.json
  def show
    @vedio = Vedio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vedio }
    end
  end

  # GET /vedios/new
  # GET /vedios/new.json
  def new
    @vedio = Vedio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vedio }
    end
  end

  # GET /vedios/1/edit
  def edit
    @vedio = Vedio.find(params[:id])
  end

  # POST /vedios
  # POST /vedios.json
  def create
    @vedio = Vedio.new(params[:vedio])

    respond_to do |format|
      if @vedio.save
        format.html { redirect_to @vedio, notice: 'Vedio was successfully created.' }
        format.json { render json: @vedio, status: :created, location: @vedio }
      else
        format.html { render action: "new" }
        format.json { render json: @vedio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vedios/1
  # PUT /vedios/1.json
  def update
    @vedio = Vedio.find(params[:id])

    respond_to do |format|
      if @vedio.update_attributes(params[:vedio])
        format.html { redirect_to @vedio, notice: 'Vedio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vedio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vedios/1
  # DELETE /vedios/1.json
  def destroy
    @vedio = Vedio.find(params[:id])
    @vedio.destroy

    respond_to do |format|
      format.html { redirect_to vedios_url }
      format.json { head :no_content }
    end
  end
end
