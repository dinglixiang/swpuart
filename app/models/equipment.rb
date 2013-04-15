class Equipment < ActiveRecord::Base
  attr_accessible :elist, :ename, :eprice, :eremain, :etype,:epicture,:epicture_cache,:remove_epicture
 
<<<<<<< HEAD
  mount_uploader :epicture, EpictureUploader

  # has_many :eorders, :dependent => :destroy
=======
  validates :ename, :presence => true
  validates :eremain, :presence => true

  mount_uploader :epicture, AvatarUploader

  has_many :eorders, :dependent => :destroy

>>>>>>> 3fd3394639bd08b6946f7d95914a0105d2329bf3
end
