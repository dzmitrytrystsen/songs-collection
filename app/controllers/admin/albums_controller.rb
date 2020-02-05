class Admin::AlbumsController < ApplicationController
  layout 'admin'
  before_action :set_artist, only: %i[show edit update destroy]

  def index
    @albums = Album.order('title ASC')
  end

  def show
  end

  def new
    @album = Album.new
  end

  def edit
  end

  def create
    @album = Album.new(album_params)

    respond_to do |format|
      if @album.save
        format.html { redirect_to @album, notice: 'Album was successfully created' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @album.update(album_params)
        format.html { redirect_to @album, notice: 'Album was successfully updated' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @album.destroy
    respond_to do |format|
      format.html { redirect_to admin_albums_url, notice: 'Album was successfully destroyed' }
    end
  end

  private

  def set_artist
    @album = Album.friendly.find(params[:id])
  end

  def album_params
    params.require(:album).permit(:title, :artist_id, :genre_id)
  end
end