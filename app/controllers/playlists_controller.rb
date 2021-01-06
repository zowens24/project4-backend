class PlaylistsController < ApplicationController


  # GET /playlists
  def index
    @playlists = Playlist.all

    render json: @playlists.to_json(include: :songs)
  end

  # GET /playlists/1
  def show
    @playlist = Playlist.find(params[:id])
    render json: @playlist.to_json(include: :songs)
  end

  # POST /playlists
  # def create
  #   @playlist = Playlist.new(playlist_params)

  #   if @playlist.save
  #     render json: @playlist, status: :created, location: @playlist
  #   else
  #     render json: @playlist.errors, status: :unprocessable_entity
  #   end
  # end
 
 
end
