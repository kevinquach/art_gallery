class AddPurchaseIdToArtworks < ActiveRecord::Migration
  def change
      add_column :artworks, :purchase_id, :integer
  end
end
