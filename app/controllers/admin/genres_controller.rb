class Admin::GenresController < ApplicationController
  layout 'admin'
  before_action :set_genre, only: %i[show edit update destroy]

  def index
    @genres = Genre.order('title ASC')
  end

  def show
  end

  def new
    @genre = Genre.new
  end

  def edit
  end

  def create
    @genre = Genre.new(genre_params)

    respond_to do |format|
      if @genre.save
        format.html { redirect_to admin_genre_path(@genre), notice: 'Genre was successfully created' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @genre.update(genre_params)
        format.html { redirect_to admin_genre_path(@genre), notice: 'Genre was successfully updated' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @genre.destroy
    respond_to do |format|
      format.html { redirect_to admin_genres_url, notice: 'Genre was successfully destroyed' }
    end
  end

  private

  def set_genre
    @genre = Genre.friendly.find(params[:id])
  end

  def genre_params
    params.require(:genre).permit(:title)
  end
end