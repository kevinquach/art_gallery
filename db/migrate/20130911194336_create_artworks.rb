class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :name, :null => false
      t.string :date_created, :null => false
      t.boolean :purchased, :null => false
      t.string :listing_date, :null => false
      t.string :type, :null => false
      t.integer :cost, :null => false

      t.timestamps
    end
  end
end
