class Admin::AlbumsController < ApplicationController
  layout 'admin'
  before_action :set_artist, only: %i[show edit update destroy]

  def index
    @albums = Album.order('title ASC')
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

  def set_artist
    @album = Album.friendly.find(params[:id])
  end

  def artist_params
    params.require(:album).permit(:title, :artist_id, :genre_id)
  end
end