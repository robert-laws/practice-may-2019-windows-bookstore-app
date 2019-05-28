class ApplicationController < ActionController::Base
  before_action :setup_navigation

  private

  def setup_navigation
    @nav_list = {"Authors" => "authors", "Books" => "books", "Book Genres" => "book_genres"}
  end
end
