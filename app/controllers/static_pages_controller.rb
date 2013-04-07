class StaticPagesController < ApplicationController

  def home
  	 @notices = Notice.all
  end

  def rules
  	
  end
end
