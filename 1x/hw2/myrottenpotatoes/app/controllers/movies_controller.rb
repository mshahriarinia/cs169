class MoviesController < ApplicationController
  def index
    @movies =  Movie.all
  end

  def show
    id = params[:id]    # e.g. 1 is the id of the movie will be here  movies/1
    @movie = Movie.find(id)
  end
end
