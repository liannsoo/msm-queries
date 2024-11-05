class MoviesController < ApplicationController
  # Action to show all movies
  def index
    @movies = Movie.all
  end

  # Action to show a specific movie by ID
  def show
    @movie = Movie.find(params[:id])
  end
end
