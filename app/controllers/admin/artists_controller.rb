class Admin::ArtistsController < ApplicationController
  layout 'admin'
  before_action :set_artist, only: %i[show edit update destroy]

  def index
    @artists = Artist.order('name ASC')
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
    @artist = Artist.friendly.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name)
  end
end