class Video < ActiveRecord::Base
   attr_accessible :name,:avatar

  mount_uploader :avatar, EpictureUploader
  
end
