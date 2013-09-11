class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name, :null => false
      t.string :email_address, :null => false
      t.string :birthplace, :null => false
      t.string :style_of_art, :null => false
      t.timestamps
    end
  end
end
