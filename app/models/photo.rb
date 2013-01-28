class Photo < ActiveRecord::Base
  attr_accessible :photo, :name, :description
  has_attached_file :photo, :styles => {:thumb => "120x120>", :small => "200x200>", :large => "600x400>"}
end
