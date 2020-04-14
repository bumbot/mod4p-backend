class MusicsController < ApplicationController
    def index
        musics = Music.all

        render json: musics
    end

    def show
        music = Music.find(params[:id])

        render json: music if music
    end
end
