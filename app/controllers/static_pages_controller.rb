class StaticPagesController < ApplicationController

  def home
  	@notices = Notice.first
  end
end
