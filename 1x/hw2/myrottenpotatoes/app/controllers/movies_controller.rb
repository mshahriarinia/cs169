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

  def new 
    # default render 'new' template
  end

  def create 
    debugger
    movie = Movie.create!(params[:movie]) #hash
    flash[:notice] = "#{movie.title} was successfully created."
    redirect_to movies_path    
  end
end
