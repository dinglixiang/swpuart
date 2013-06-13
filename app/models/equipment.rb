class Equipment < ActiveRecord::Base
  attr_accessible :elist, :ename, :eprice, :eremain, :etype,:epicture,:epicture_cache,:remove_epicture
 


  mount_uploader :epicture, AvatarUploader

  # has_many :eorders, :dependent => :destroy

  validates :ename, :presence => true
  validates :eremain, :presence => true




end
