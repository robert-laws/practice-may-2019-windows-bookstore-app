class BookGenresController < ApplicationController
  layout 'application'

  def index
    @book_genres = BookGenre.sorted
  end

  def show
    @book_genre = BookGenre.find(params[:id])
  end

  def new
    @book_genre = BookGenre.new
  end

  def create
    @book_genre = BookGenre.new(book_genre_params)
  end

  def edit
    @book_genre = BookGenre.find(params[:id])
  end

  def update
    @book_genre = BookGenre.find(params[:id])
  end

  def delete
    @book_genre = BookGenre.find(params[:id])
  end

  def destroy
  end

  private

  def book_genre_params
    params.require(:book_genre).permit(:genre)
  end
end
