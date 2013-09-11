class Artwork < ActiveRecord::Base
  belongs_to :artist
  belongs_to :collection
  belongs_to :purchase
  

  validates_presence_of :name
  validates_presence_of :date_created
  validates_presence_of :listing_date
  validates_presence_of :type
  validates_numericality_of :cost
  validates :purchased, :inclusion => {:in => [true, false]}

end
