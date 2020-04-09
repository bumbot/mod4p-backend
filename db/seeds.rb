# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Playlist.destroy_all
Music.destroy_all

user1 = User.create(username: 'bum', lastFive: 'Adele,Beyonce,Justin Bieber,Drake,Rick Astley')
user2 = User.create(username: 'dum', lastFive: 'Adele,Beyonce,Justin Bieber,Drake,Rick Astley')
user3 = User.create(username: 'gum', lastFive: 'Adele,Beyonce,Justin Bieber,Drake,Rick Astley')

music1 = Music.create(songName: "Single Ladies", songArtist: "Beyonce", songAlbum: "meh", uriLink: "")
music2 = Music.create(songName: "Hello", songArtist: "Adele", songAlbum: "eh", uriLink: "")
music3 = Music.create(songName: "Yummy", songArtist: "Justin Bieber", songAlbum: "heh", uriLink: "")
music4 = Music.create(songName: "Passionfruit", songArtist: "Drake", songAlbum: "yeh", uriLink: "")
music5 = Music.create(songName: "Never Gonna Give You Up", songArtist: "Rick Astley", songAlbum: "cheh", uriLink: "")

play1 = Playlist.create(user: user1, music: music1, searchFreq: 2)
play2 = Playlist.create(user: user2, music: music2, searchFreq: 1)
play3 = Playlist.create(user: user3, music: music3, searchFreq: 5)
play4 = Playlist.create(user: user1, music: music4, searchFreq: 6)
play5 = Playlist.create(user: user2, music: music5, searchFreq: 3)
play6 = Playlist.create(user: user3, music: music5, searchFreq: 1)
play7 = Playlist.create(user: user1, music: music2, searchFreq: 8)
play8 = Playlist.create(user: user2, music: music3, searchFreq: 4)
play9 = Playlist.create(user: user3, music: music4, searchFreq: 1)