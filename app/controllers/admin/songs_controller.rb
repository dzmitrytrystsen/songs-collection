class Admin::SongsController < ApplicationController
  layout 'admin'
  before_action :set_song, only: %i[show edit update destroy]

  def index
    @songs = Song.order('title ASC')
  end

  def show
  end

  def new
    @song = Song.new
  end

  def edit
  end

  def create
    @song = Song.new(song_params)

    respond_to do |format|
      if @song.save
        format.html { redirect_to @song, notice: 'Song was successfully created' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @song.update(song_params)
        format.html { redirect_to @song, notice: 'Song was successfully updated' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @song.destroy
    respond_to do |format|
      format.html { redirect_to admin_songs_url, notice: 'Song was successfully destroyed' }
    end
  end

  private

  def set_song
    @song = Song.friendly.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :release_date, :album_id, :artist_id, :genre_id)
  end
end