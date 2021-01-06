class SongsController < ApplicationController


  # GET /songs
  def index
    @songs = Song.all

    render json: @songs
  end


  # POST /songs
  def create
    @song = Song.new(song_params)

    if @song.save
      render json: @song, status: :created, location: @song
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /songs/1
  def update
    if @song.update(song_params)
      render json: @song
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  # DELETE /songs/1
  def destroy
    @song.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
   

    # Only allow a list of trusted parameters through.
    def song_params
      params.require(:song).permit(:title, :artist)
    end
end
