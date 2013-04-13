class Site < ActiveRecord::Base
  attr_accessible :sdescribe, :sname, :sstate,:spicture
  mount_uploader :spicture, SpictureUploader
end
