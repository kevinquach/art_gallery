class Collection < ActiveRecord::Base
  validates_presence_of :name, :null => false
  has_many :artworks
end
