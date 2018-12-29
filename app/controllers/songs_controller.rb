class SongsController < ApplicationController
  before_action :find_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def show
    find_song
  end

  def create
    @song = Song.new(song_params)
    if @song.valid?
      @song.save
      redirect_to song_path(@song)
    else
      render :new
    end
  end



  def edit
    find_song
  end

  def update
    find_song
    @song.attributes = song_params
      if @song.valid?
        @song.save
        redirect_to song_path(@song)
      else
        render :edit
      end
  end

  def destroy
    find_song.destroy
    redirect_to songs_path
  end

  private

    def find_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:title, :artist_name, :release_year, :released, :genre)

    end

end
