#encoding:utf-8

class EordersController < ApplicationController
  

  def index
    eorders = Eorder.find_all_by_eartopinion("同意")
    @eorders = Kaminari.paginate_array(eorders).page(params[:page]).per(5)
  end

  def show
    @eorder = Eorder.find(params[:id])


  end

  def new
    @eorder = Eorder.new
    @equipment = Equipment.find_by_id(params[:equipment_id]) if params[:equipment_id]

  end

  def edit
    @eorder = Eorder.find(params[:id])
  end

  def create
    @eorder = Eorder.new(params[:eorder])
    
    respond_to do |format|
      if @eorder.save
        format.html { redirect_to @eorder, notice: '成功创建预约.' }
        format.json { render json: @eorder, status: :created, location: @eorder }
      else
        format.html { render action: "new" }
        format.json { render json: @eorder.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @eorder = Eorder.find(params[:id])

    respond_to do |format|
      if @eorder.update_attributes(params[:eorder])
        format.html { redirect_to @eorder, notice: '成功更新设备申请表.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @eorder.errors, status: :unprocessable_entity }
      end
    end
  end

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
