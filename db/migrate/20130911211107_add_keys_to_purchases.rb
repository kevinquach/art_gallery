class AddKeysToPurchases < ActiveRecord::Migration
  def change
      add_column :purchases, :customer_id, :integer
      add_column :purchases, :artwork_id, :integer
  end
end
