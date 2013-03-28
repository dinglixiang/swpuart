class StaticPagesController < ApplicationController

  def home
  	 @notices = Notice.all
  end
end
