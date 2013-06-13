#encoding:utf-8
class StaticPagesController < ApplicationController

  def home
  	 @notices = Notice.limit(3).order('created_at desc')
  	 @eorders = Eorder.where('eartopinion = ?',"同意").limit(8).order('created_at desc')
  	 @sorders = Sorder.where('sopinion = ?',"同意").limit(8).order('created_at desc')
  end

  def rules
  	
  end
end
