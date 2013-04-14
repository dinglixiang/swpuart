#encoding:utf-8
class SitesController < ApplicationController

  def index
     #@sites = Site.all
    # @sites = Kaminari.paginate_array(sites).page(params[:page]).per(10)
    @sites=Site.page(params[:page]).per(8)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sites }
    end
  end

  def show
    @site = Site.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @site }
    end
  end


  def new
    @site = Site.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @site }
    end
  end

  def edit
    @site = Site.find(params[:id])
  end

  def create
    @site = Site.new(params[:site])

    respond_to do |format|
      if @site.save
        format.html { redirect_to @site, notice: '成功创建场地.' }
        format.json { render json: @site, status: :created, location: @site }
      else
        format.html { render action: "new" }
        format.json { render json: @site.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @site = Site.find(params[:id])

    respond_to do |format|
      if @site.update_attributes(params[:site])
        format.html { redirect_to @site, notice: '成功更新场地.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @site.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @site = Site.find(params[:id])
    @site.destroy

    respond_to do |format|
      format.html { redirect_to sites_url }
      format.json { head :no_content }
    end
  end

  def siteorder
    #@orders=Site.find_all_by_sstate("忙碌")
    #@orders=Site.find_by_sql("select * from sites where sstate='忙碌'")
  end
end
