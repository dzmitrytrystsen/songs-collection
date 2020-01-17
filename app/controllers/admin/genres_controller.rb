class GenresController < ApplicationController
  def index
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
  end

  def genre_params
    params.require(:genre).permit(:title)
  end
end