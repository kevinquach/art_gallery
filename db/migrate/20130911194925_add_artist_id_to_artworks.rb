class AddArtistIdToArtworks < ActiveRecord::Migration
  def change
    add_column :artworks, :artist_id, :integer
  end
end
