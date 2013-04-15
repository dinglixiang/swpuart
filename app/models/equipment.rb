class Equipment < ActiveRecord::Base
  attr_accessible :elist, :ename, :eprice, :eremain, :etype,:epicture,:epicture_cache,:remove_epicture
 

  validates :ename, :presence => true
  validates :eremain, :presence => true

  mount_uploader :epicture, EpictureUploader

  has_many :eorders, :dependent => :destroy

end
