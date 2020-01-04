class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title, null: false
      t.text :description
      t.timestamps
    end
    add_index :artworks, :title, unique: true
  end
end
