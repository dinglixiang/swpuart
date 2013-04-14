class Sorder < ActiveRecord::Base
  attr_accessible :sapplicant, :skeeper, :sname, :sopinion, :sreturntime, :ssituation, :stel, :susereason, :susetime
  validates :sname, :presence => true
  validates :sapplicant, :presence => true
  validates :stel, :presence => true
  validates :susetime, :presence => true
  validates :susereason, :presence => true

end
