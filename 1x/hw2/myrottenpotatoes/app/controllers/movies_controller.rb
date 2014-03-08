class MoviesController < ApplicationController
  def index
    @movies =  Movie.all
  end

  def show
    id = params[:id]    # e.g. 1 is the id of the movie will be here  movies/1
    @movie = Movie.find(id)
    #@movie = Movie.find_by_title(id)    
    # you can go to /movies/Star Wars Morty, btu also you need to fix the index template to generate url of 
    # model by title -that piece not done in this iteration
  end

  def new      # initial action when new movie is clicked
    # default render 'new' template
  end

  def create      # this is the call back of the clicking submit button.
    # debugger
    movie = Movie.create!(params[:movie]) #hash
    flash[:notice] = "#{movie.title} was successfully created."
    redirect_to movies_path    
  end

  def edit      # this is the initial place when user clicks on edit on a movie model object. 
    # This fetches the object by id
    @movie = Movie.find params[:id]
  end

  def update    #this is the call back of the edit form
    @movie = Movie.find params[:id]
    @movie.update_attributes! params[:movie]
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movies_path
  end

  def destroy    
    @movie = Movie.find params[:id]
    @movie.destroy
    flash[:notice] = "#{@movie.title} was successfully deleted."
    redirect_to movies_path
  end
end
