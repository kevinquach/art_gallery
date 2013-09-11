class Customer < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :email
  validates_numericality_of :dollar_amount_purchased

  has_many :artworks, through: :purchases
  has_many :purchases
  has_many :favorites
  has_many :collections, through: :favorites
end
