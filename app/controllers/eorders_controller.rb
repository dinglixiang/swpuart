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
<<<<<<< HEAD
    if @eorder.equipment.eremain < 1
      redirect_to equipment_index_path, notice: "没有多余的设备"
    else
      if @eorder.save
        # @eorder.equipment.update_column("eremain",@eorder.equipment.eremain - 1)  
=======
    #@eorder = Eorder.create(:ename => @equipment.ename)

    respond_to do |format|
      if @eorder.save #&& @equipment.save
        # @equipment.eremain -=1
        format.html { redirect_to equipment_index_path, notice: '成功提交设备申请表.' }
        format.json { render json: @eorder, status: :created, location: @eorder }
      else
        format.html { render action: "new" }
        format.json { render json: @eorder.errors, status: :unprocessable_entity }
>>>>>>> 2d6e2831b13e0bbc273ee0f5c964ef1df26ead91
      end
      redirect_to equipment_index_path, notice: "预约成功"
    end
  end

  def update
    @eorder = Eorder.find(params[:id])

    respond_to do |format|
      if @eorder.update_attributes(params[:eorder])
<<<<<<< HEAD
        format.html { redirect_to @eorder, notice: 'Eorder was successfully updated.' }
=======

        format.html { redirect_to @eorder, notice: '成功更新设备申请表.' }
>>>>>>> 2d6e2831b13e0bbc273ee0f5c964ef1df26ead91
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
