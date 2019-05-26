class PublicController < ApplicationController
  layout 'public'

  def index
    # welcome text
    @welcome = "Hello there"
    @page_title = "Home Page"
  end

  def show
    @page_title = "Show Content"
  end


end
