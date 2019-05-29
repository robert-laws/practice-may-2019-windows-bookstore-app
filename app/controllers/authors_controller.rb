class AuthorsController < ApplicationController
  def index
    @authors = Author.sorted
  end

  def show
    @author = Author.find_by_id(params[:id])
  end
  
  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      flash[:notice] = "success|Author has been successfully saved to the database."
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])

    if @author.update_attributes(author_params)
      flash[:notice] = "success|Author has been successfully updated."
      redirect_to author_path(@author)
    else
      render :edit
    end
  end

  def destroy
    @author = Author.find(params[:id])
    @author.delete

    flash[:notice] = "success|Author - #{@author.name} - has been removed from the database."
    redirect_to authors_path
  end

  private

  def author_params
    params.require(:author).permit(:first_name, :last_name, :birth_year)
  end
end
