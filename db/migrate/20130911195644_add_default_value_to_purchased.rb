class AddDefaultValueToPurchased < ActiveRecord::Migration
  def change
    remove_column :artworks, :purchased, :boolean
    add_column :artworks, :purchased, :boolean, :default => false
  end
end
