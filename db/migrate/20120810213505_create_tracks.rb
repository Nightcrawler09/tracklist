class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.integer :tag_id
      t.string :author
      t.integer :order
      t.integer :album_id

      t.timestamps
    end
  end
end
