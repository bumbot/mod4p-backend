class PlaylistsController < ApplicationController
    def index
        playlists = Playlist.all

        render json: playlists
    end

    def show
        playlist = Playlist.find(params[:id])

        render json: playlist if playlist
    end

    def create
        playlist = Playlist.new(user: params[:user], music: params[:music], searchFreq: params[:searchFreq])

        if (playlist)
            playlist.save!
        end

        render json: playlist if playlist
    end
end
