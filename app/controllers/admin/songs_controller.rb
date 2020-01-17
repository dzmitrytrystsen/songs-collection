class Admin::SongsController < ApplicationController
  layout 'admin'
  before_action :set_song, only: %i[show edit update destroy]

  def index
    @songs = Song.order('title ASC')
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def set_song
    @song = Song.friendly.find(params[:id])
  end

  def artist_params
    params.require(:song).permit(:title, :release_date, :album_id, :artist_id, :genre_id)
  end
end