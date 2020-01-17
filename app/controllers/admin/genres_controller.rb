class Admin::GenresController < ApplicationController
  layout 'admin'
  before_action :set_genre, only: %i[show edit update destroy]

  def index
    @genres = Genre.order('title ASC')
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

  def set_genre
    @genre = Genre.friendly.find(params[:id])
  end

  def genre_params
    params.require(:genre).permit(:title)
  end
end