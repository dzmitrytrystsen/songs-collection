class Admin::ArtistsController < ApplicationController
  layout 'admin'
  before_action :set_artist, only: %i[show edit update destroy]

  def index
    @artists = Artist.order('name ASC')
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def edit
  end

  def create
    @artist = Artist.new(artist_params)

    respond_to do |format|
      if @artist.save
        format.html { redirect_to @artist, notice: 'Artist was successfully created' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @artist.update(artist_params)
        format.html { redirect_to @artist, notice: 'Artist was successfully updated' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @artist.destroy
    respond_to do |format|
      format.html { redirect_to admin_artists_url, notice: 'Artist was successfully destroyed' }
    end
  end

  private

  def set_artist
    @artist = Artist.friendly.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name)
  end
end