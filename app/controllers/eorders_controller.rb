#encoding:utf-8
class EordersController < ApplicationController

  def index
    eorders = Eorder.find_all_by_eartopinion("同意")
    @eorders = Kaminari.paginate_array(eorders).page(params[:page]).per(2)
  end

  def show
    @eorder = Eorder.find(params[:id])


  end

  def new
    @eorder = Eorder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @eorder }
    end
  end

  def edit
    @eorder = Eorder.find(params[:id])
  end

  def create
    @eorder = Eorder.new(params[:eorder])
    #@eorder = Eorder.create(:ename => @equipment.ename)

    respond_to do |format|
      if @eorder.save
        
        format.html { redirect_to equipment_index_path, notice: 'Eorder was successfully created.' }
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

        format.html { redirect_to @eorder, notice: 'Eorder was successfully updated.' }
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
end
