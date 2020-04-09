class CreateMusics < ActiveRecord::Migration[6.0]
  def change
    create_table :musics do |t|
      t.string :songName
      t.string :songArtist
      t.string :songAlbum
      t.string :uriLink
      t.timestamps
    end
  end
end
