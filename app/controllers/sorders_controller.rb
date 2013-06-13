#encoding:utf-8
class SordersController < ApplicationController
  # GET /sorders
  # GET /sorders.json
  def index
    #@sorders = Sorder.all
    sorders = Sorder.find_all_by_sopinion("同意")
    @sorders = Kaminari.paginate_array(sorders).page(params[:page]).per(15)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sorders }
    end
  end

  # GET /sorders/1
  # GET /sorders/1.json
  def show
    @sorder = Sorder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sorder }
    end
  end

  # GET /sorders/new
  # GET /sorders/new.json
  def new
    @sorder = Sorder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sorder }
    end
  end

  # GET /sorders/1/edit
  def edit
    @sorder = Sorder.find(params[:id])
  end

  # POST /sorders
  # POST /sorders.json
  def create
    @sorder = Sorder.new(params[:sorder])

    respond_to do |format|
      if @sorder.save
        format.html { redirect_to sites_path, notice: '您的预约申请已提交，请耐心等待回复！' }
        format.json { render json: @sorder, status: :created, location: @sorder }
      else
        format.html { render action: "new" }
        format.json { render json: @sorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sorders/1
  # PUT /sorders/1.json
  def update
    @sorder = Sorder.find(params[:id])

    respond_to do |format|
      if @sorder.update_attributes(params[:sorder])
        format.html { redirect_to @sorder, notice: '成功更新场地申请表.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sorders/1
  # DELETE /sorders/1.json
  def destroy
    @sorder = Sorder.find(params[:id])
    @sorder.destroy

    respond_to do |format|
      format.html { redirect_to sorders_url }
      format.json { head :no_content }
    end
  end
end
