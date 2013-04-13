class EordersController < ApplicationController
  # GET /eorders
  # GET /eorders.json
  def index
    @eorders = Eorder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @eorders }
    end
  end

  # GET /eorders/1
  # GET /eorders/1.json
  def show
    @eorder = Eorder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @eorder }
    end
  end

  # GET /eorders/new
  # GET /eorders/new.json
  def new
    @eorder = Eorder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @eorder }
    end
  end

  # GET /eorders/1/edit
  def edit
    @eorder = Eorder.find(params[:id])
  end

  # POST /eorders
  # POST /eorders.json
  def create
    # @equipment=pass_equipment(params[:equipment_id])
    # @equipment.eremain -= 1
    @eorder = Eorder.new(params[:eorder])

    respond_to do |format|
      if @eorder.save #&& @equipment.save
        
        format.html { redirect_to equipment_index_path, notice: 'Eorder was successfully created.' }
        format.json { render json: @eorder, status: :created, location: @eorder }
      else
        format.html { render action: "new" }
        format.json { render json: @eorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /eorders/1
  # PUT /eorders/1.json
  def update
    @eorder = Eorder.find(params[:id])

    respond_to do |format|
      if @eorder.update_attributes(params[:eorder])
        format.html { redirect_to @eorder, notice: 'Eorder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @eorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eorders/1
  # DELETE /eorders/1.json
  def destroy
    @eorder = Eorder.find(params[:id])
    @eorder.destroy

    respond_to do |format|
      format.html { redirect_to eorders_url }
      format.json { head :no_content }
    end
  end

  private 

  def pass_equipment(equipment_id)
    current_equipment=Equipment.find_by_id(equipment_id)
    if current_equipment
      current_equipment.eremain -= 1
    
    end
    current_equipment
  end
end
