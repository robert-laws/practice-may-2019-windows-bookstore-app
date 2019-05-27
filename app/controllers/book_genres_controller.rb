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

    if @book_genre.save
      flash[:notice] = "success|New Book Genre has been successfully added to the database."
      redirect_to book_genres_path
    else
      render :new
    end
  end

  def edit
    @book_genre = BookGenre.find(params[:id])
  end

  def update
    @book_genre = BookGenre.find(params[:id])

    if @book_genre.update_attributes(book_genre_params)
      flash[:notice] = "success|The Book Genre has been successfully updated."
      redirect_to book_genre_path(@book_genre)
    else
      render :edit
    end
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
