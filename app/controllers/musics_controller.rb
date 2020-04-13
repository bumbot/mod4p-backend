require 'rest-client'
require 'nokogiri'
require 'open-uri'

class MusicsController < ApplicationController
    def index
        musics = Music.all

        render json: musics
    end

    def show
        music = Music.find(params[:id])

        render json: music if music
    end

    def get_song 
        song = params[:song]
        artist = params[:artist]
        token = "-YbFQTXMw5wHgbhmz9m5_F0FqM7S8zbpW43DldPqw9JB0LzU0zplcikqnc--a6e4"
        response = RestClient.get("https://api.genius.com/search?q=#{song}%20#{artist}", {
            "User-Agent": "CompuServe Classic/1.22",
            "Accept": "application/json",
            "Host": "api.genius.com",
            "Authorization": "Bearer #{token}"
        })
        
        json_body = JSON.parse(response.body)
        
        song_url = json_body["response"]["hits"][0]["result"]["url"]

        doc = Nokogiri::HTML(open(song_url))

        lyrics = doc.css(".lyrics").children

        byebug
        
        render json: lyrics

    end 
end
