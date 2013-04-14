class Equipment < ActiveRecord::Base
  attr_accessible :elist, :ename, :eprice, :eremain, :etype,:epicture
 
  mount_uploader :epicture, EpictureUploader

  # has_many :eorders, :dependent => :destroy
end
