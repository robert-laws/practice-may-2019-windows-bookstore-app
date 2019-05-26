class BooksController < ApplicationController
  layout 'public'

  before_action :find_author

  def index
    if @author.nil?
      @books = Book.all
    else
      @books = @author.books 
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
    @authors = Author.all
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to book_path(@book.id)
    else
      render 'new'
    end
  end

  private

  def find_author
    if params[:author_id]
      @author = Author.find(params[:author_id])
    else
      @author = nil
    end
  end

  def book_params
    params.require(:book).permit(:title, :year, :author_id)
  end
end
