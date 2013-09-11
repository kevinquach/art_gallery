class Artist < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :email_address
  validates_presence_of :birthplace
  validates_presence_of :style_of_art
  
  has_many :artworks

end
