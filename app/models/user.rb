class User < ApplicationRecord
    has_many :playlists
    has_many :musics, through: :playlists
end
