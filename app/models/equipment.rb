class Equipment < ActiveRecord::Base
  attr_accessible :elist, :ename, :eprice, :eremain, :etype,:epicture
 
  validates :ename, :presence => true
  validates :eremain, :presence => true

  mount_uploader :epicture, AvatarUploader

  has_many :eorders, :dependent => :destroy

end
