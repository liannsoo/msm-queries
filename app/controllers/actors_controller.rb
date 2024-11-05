class ActorsController < ApplicationController
  def index
    @actors = Actor.all.order(:name)
  end

  def show
    @actor = Actor.find(params[:id])
    @movies = @actor.movies 
    @characters = @actor.characters
  end
end
