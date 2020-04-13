require 'rest-client'

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
        puts json_body 
        render json: json_body

    end 
end
