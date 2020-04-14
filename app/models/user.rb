class User < ApplicationRecord
    has_many :playlists
    has_many :musics, through: :playlists

    has_secure_password
    validates :username, uniqueness: {case_sensitive: false}
end
