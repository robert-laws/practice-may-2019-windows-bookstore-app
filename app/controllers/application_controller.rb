class ApplicationController < ActionController::Base
  before_action :setup_navigation

  private

  def setup_navigation
    @authors_list = Author.sorted
  end
end
